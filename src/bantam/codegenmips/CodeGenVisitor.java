/*
 * File: CodeGenVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 4B
 * Date: April 15, 2017
 */

package bantam.codegenmips;

import bantam.ast.*;
import bantam.util.ClassTreeNode;
import bantam.util.Location;
import bantam.util.SymbolTable;
import bantam.visitor.NumLocalVarsVisitor;
import bantam.visitor.Visitor;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

/**
 * Visitor class to generate code for all classes
 */
public class CodeGenVisitor extends Visitor {

    /**
     * Assembly support object (using Mips assembly support)
     */
    private MipsSupport assemblySupport;

    /**
     * ClassTreeNode of the class
     */
    private ClassTreeNode currClassNode;

    /**
     * A map of method names to their local variable and parameter count
     */
    private Map<String, Integer> methodToLocalVarCount;

    /**
     * Symbol table for variables of provided class
     * Field name to Location
     */
    private SymbolTable varSymbolTable;

    /**
     * A list of all ClassTreeNodes in the program generated in preorder
     */
    private List<ClassTreeNode> classList;

    /**
     * A list of all String constants in the program
     */
    private List<String> stringConstList;

    /**
     * Stack of end loop labels
     */
    private Stack<String> endLoopLabelStack;

    /**
     * Stack of the number local variables generated so far
     */
    private Stack<Integer> numLocalVarGeneratedStack;

    /**
     * Stack of the number of local variables in methods
     */
    private Stack<Integer> localVarCountStack;

    /**
     * Stack of the number of parameters for methods
     */
    private Stack<Integer> paramCountStack;

    /**
     * Constructor
     *
     * @param codeGen MipsCodeGenerator
     * @param support Assembly support object
     * @param node ClassTreeNode of class to generate code for
     */
    public CodeGenVisitor(MipsCodeGenerator codeGen, MipsSupport support,
                          ClassTreeNode node) {
        assemblySupport = support;
        classList = codeGen.getClassList();
        stringConstList = codeGen.getStringConstList();

        currClassNode = node;
        varSymbolTable = node.getVarSymbolTable();

        //Counts kept in stack as one method may call another, thus changing the values
        localVarCountStack = new Stack<>();
        paramCountStack = new Stack<>();
        numLocalVarGeneratedStack = new Stack<>();
        numLocalVarGeneratedStack.push(0);
        methodToLocalVarCount = (new NumLocalVarsVisitor()).getNumLocalVars(node);

        endLoopLabelStack = new Stack<>();
    }

    /**
     * Returns the scope level of the node's fields
     *
     * @param node the ClassTreeNode
     * @return int scope level of the node's fields
     */
    private int getSymTableFieldLevel(ClassTreeNode node){
        if(node.getParent() != null){
            return node.getParent().getVarSymbolTable().getCurrScopeLevel();
        }
        return 0;
    }

    /**
     * Generates code for a method node
     *
     * @param node the method node
     * @return result of the visit
     */
    @Override
    public Object visit(Method node) {
        String methodName = currClassNode.getName() + "." + node.getName();
        paramCountStack.push(node.getFormalList().getSize());
        localVarCountStack.push(methodToLocalVarCount.get(methodName) -
                paramCountStack.peek());
        numLocalVarGeneratedStack.push(0);

        // Generate label for method node
        assemblySupport.genNewLine();
        assemblySupport.genLabel(currClassNode.getName() + "." + node.getName());

        //method prolog
        genProlog();
        varSymbolTable.enterScope();

        //method body
        assemblySupport.genNewLine();
        assemblySupport.genComment("Now starts the body of method " + node.getName());
        node.getFormalList().accept(this);
        node.getStmtList().accept(this);

        //method epilog
        varSymbolTable.exitScope();
        assemblySupport.genNewLine();
        genEpilog();
        paramCountStack.pop();
        localVarCountStack.pop();
        numLocalVarGeneratedStack.pop();

        return null;
    }

    /**
     * Adds parameter to symbol table
     *
     * @param node the formal node
     * @return result of the visit
     */
    @Override
    public Object visit(Formal node) {
        //offset = number of local variables & params
        //       - # of params in table thus far - 1
        //       + room for ra, fp
        int offset = ((localVarCountStack.peek() + paramCountStack.peek() -
                varSymbolTable.getCurrScopeSize() - 1) * 4) + 8;
        varSymbolTable.add(node.getName(),
                new Location(assemblySupport.getFPReg(), offset));
        return null;
    }

    /**
     * Adds declared variable to symbol table and generate MIPS code accordingly
     *
     * @param node the declaration statement node
     * @return result of the visit
     */
    @Override
    public Object visit(DeclStmt node) {
        int numLocalVarGenerated = numLocalVarGeneratedStack.peek();
        //offset = number of local variables we've added to the table thus far
        int offset = numLocalVarGenerated * 4;
        varSymbolTable.add(node.getName(),
                new Location(assemblySupport.getFPReg(), offset));
        //increment the local variable generated count
        numLocalVarGeneratedStack.pop();
        numLocalVarGeneratedStack.push(numLocalVarGenerated + 1);

        //evaluate the init expr
        genCallerPushes();
        node.getInit().accept(this);
        genCallerPops();

        //move result from init expr from $v0 into its position on the stack
        assemblySupport.genComment("Initializing local variable " + node.getName());
        assemblySupport.genStoreWord(assemblySupport.getResultReg(),
                offset, assemblySupport.getFPReg());

        return null;
    }

    /**
     * Generate MIPS code for an if statement node
     *
     * @param node the if statement node
     * @return result of the visit
     */
    @Override
    public Object visit(IfStmt node) {
        String endIfLabel = assemblySupport.getLabel();

        assemblySupport.genComment("if statement");
        node.getPredExpr().accept(this);

        //generate code for if then statement
        if (node.getElseStmt() == null) {
            assemblySupport.genComment("branch to end of IfStmt if predicate is false");
            assemblySupport.genCondBeq(assemblySupport.getZeroReg(),
                    assemblySupport.getResultReg(), endIfLabel);

            node.getThenStmt().accept(this);
        }
        //generate code for if then else statement
        else {
            String elseLabel = assemblySupport.getLabel();
            assemblySupport.genComment("branch to else statement if predicate is false");
            assemblySupport.genCondBeq(assemblySupport.getZeroReg(),
                    assemblySupport.getResultReg(), elseLabel);

            node.getThenStmt().accept(this);
            assemblySupport.genComment("unconditional branch to end of IfStmt");
            assemblySupport.genUncondBr(endIfLabel);

            assemblySupport.genNewLine();
            assemblySupport.genComment("else statement");
            assemblySupport.genLabel(elseLabel);
            node.getElseStmt().accept(this);
        }

        assemblySupport.genNewLine();
        assemblySupport.genComment("end of if statement");
        assemblySupport.genLabel(endIfLabel);

        return null;
    }

    /**
     * Generate MIPS code for a while statement node
     *
     * @param node the while statement node
     * @return result of the visit
     */
    @Override
    public Object visit(WhileStmt node) {
        String whileCondLabel = assemblySupport.getLabel();
        String endWhileLabel = assemblySupport.getLabel();

        //push end while label onto stack (used for break statements)
        endLoopLabelStack.push(endWhileLabel);

        assemblySupport.genNewLine();
        assemblySupport.genComment("while statement");
        assemblySupport.genLabel(whileCondLabel);

        node.getPredExpr().accept(this);
        assemblySupport.genComment("branch to end of WhileStmt if predicate is false");
        assemblySupport.genCondBeq(assemblySupport.getZeroReg(),
                assemblySupport.getResultReg(), endWhileLabel);

        node.getBodyStmt().accept(this);
        assemblySupport.genComment("unconditional branch to beginning of WhileStmt");
        assemblySupport.genUncondBr(whileCondLabel);

        assemblySupport.genNewLine();
        assemblySupport.genComment("end of while statement");
        assemblySupport.genLabel(endWhileLabel);

        //pop the label off the stack
        endLoopLabelStack.pop();

        return null;
    }

    /**
     * Generate MIPS code for a for statement node
     *
     * @param node the for statement node
     * @return result of the visit
     */
    @Override
    public Object visit(ForStmt node) {
        String forLabel = assemblySupport.getLabel();
        String endForLabel = assemblySupport.getLabel();

        //push end for label onto stack (used for break statements)
        endLoopLabelStack.push(endForLabel);

        assemblySupport.genNewLine();
        assemblySupport.genComment("for statement");
        if (node.getInitExpr() != null) {
            assemblySupport.genComment("for statement init");
            node.getInitExpr().accept(this);
        }

        assemblySupport.genLabel(forLabel);
        if (node.getPredExpr() != null) {
            assemblySupport.genComment("for statement predicate check");
            node.getPredExpr().accept(this);
            assemblySupport.genComment("branch to end of ForStmt if predicate is false");
            assemblySupport.genCondBeq(assemblySupport.getZeroReg(),
                    assemblySupport.getResultReg(), endForLabel);
        }

        node.getBodyStmt().accept(this);

        if (node.getUpdateExpr() != null) {
            node.getUpdateExpr().accept(this);
        }

        assemblySupport.genComment("unconditional branch to beginning of ForStmt");
        assemblySupport.genUncondBr(forLabel);

        assemblySupport.genNewLine();
        assemblySupport.genComment("end of for statement");
        assemblySupport.genLabel(endForLabel);

        //pop the label off the stack
        endLoopLabelStack.pop();

        return null;
    }

    /**
     * Generate MIPS code for a break statement node
     *
     * @param node the break statement node
     * @return result of the visit
     */
    @Override
    public Object visit(BreakStmt node) {
        String endLoopLabel = endLoopLabelStack.peek();
        assemblySupport.genComment("break out of loop");
        assemblySupport.genUncondBr(endLoopLabel);
        return null;
    }

    /**
     * Visit a block statement node
     *
     * @param node the block statement node
     * @return result of the visit
     */
    @Override
    public Object visit(BlockStmt node) {
        varSymbolTable.enterScope();
        node.getStmtList().accept(this);
        varSymbolTable.exitScope();
        return null;
    }

    /**
     * Generate MIPS code for a return statement node
     *
     * @param node the return statement node
     * @return result of the visit
     */
    @Override
    public Object visit(ReturnStmt node) {
        if (node.getExpr() != null) {
            //return value will be stored in $v0
            assemblySupport.genComment("evaluate return value");
            node.getExpr().accept(this);
        }
        //return from the method
        genEpilog();

        return null;
    }

    /**
     * Generate MIPS code for a list node of expressions
     *
     * @param node the expression list node
     * @return result of the visit
     */
    public Object visit(ExprList node) {
        for (Iterator it = node.iterator(); it.hasNext(); ) {
            ((Expr) it.next()).accept(this);
            //assuming parameters since ExprList only appears in Dispatch Expr
            assemblySupport.genComment("push param onto stack");
            genPush(assemblySupport.getResultReg());
        }

        return null;
    }

    /**
     * Generate MIPS code for a dispatch expression node
     *
     * @param node the dispatch expression node
     * @return result of the visit
     */
    @Override
    public Object visit(DispatchExpr node) {
        ClassTreeNode callerClass = currClassNode;

        assemblySupport.genComment("code for call to " + node.getMethodName());
        paramCountStack.push(node.getActualList().getSize());

        genCallerPushes();

        assemblySupport.genComment("Computing DispatchExpr ref");
        if(node.getRefExpr() != null) {
            node.getRefExpr().accept(this);
            callerClass = callerClass.getClassMap().get(node.getRefExpr().getExprType());
            assemblySupport.genComment("temporarily push ref on the stack");
            genPush(assemblySupport.getResultReg());
        }
        else {
            //if ref is null, method is from "this" class
            assemblySupport.genComment("temporarily push ref on the stack");
            genPush(assemblySupport.getArg0Reg());
        }

        assemblySupport.genComment("Computing parameters and pushing onto stack");
        node.getActualList().accept(this);

        assemblySupport.genComment("Loading obj ref into $a0");
        assemblySupport.genLoadWord(assemblySupport.getArg0Reg(),
                paramCountStack.peek() * 4, assemblySupport.getSPReg());

        assemblySupport.genComment("Finding location of code to execute: " +
                node.getMethodName());
        assemblySupport.genComment("ptr to vtf is the 3rd slot, 8 bytes down");
        assemblySupport.genLoadWord(assemblySupport.getT0Reg(),
                8, assemblySupport.getArg0Reg());

        Location methodLoc =
                (Location)callerClass.getMethodSymbolTable().lookup(node.getMethodName());
        assemblySupport.genComment("loading method location into $t0");
        assemblySupport.genLoadWord(assemblySupport.getT0Reg(),
                methodLoc.getOffset(), methodLoc.getBaseReg());

        assemblySupport.genComment("jump to the method in $t0");
        assemblySupport.genInDirCall(assemblySupport.getT0Reg());

        assemblySupport.genComment("pop ref off the stack");
        genPop(assemblySupport.getArg0Reg());

        genCallerPops();
        paramCountStack.pop();
        assemblySupport.genNewLine();

        return null;
    }

    /**
     * Generate MIPS code for a new expression node
     *
     * @param node the new expression node
     * @return result of the visit
     */
    @Override
    public Object visit(NewExpr node) {
        genCallerPushes();

        assemblySupport.genComment("load prototype into $a0");
        assemblySupport.genLoadAddr(assemblySupport.getArg0Reg(),
                node.getType() + "_template");

        assemblySupport.genComment("clone the prototype");
        assemblySupport.genDirCall("Object.clone");

        assemblySupport.genMove(assemblySupport.getArg0Reg(),
                assemblySupport.getResultReg());

        assemblySupport.genComment("calling init function to initialize fields");
        assemblySupport.genDirCall(node.getType() + "_init");

        genCallerPops();

        return null;
    }

    /**
     * Generates code to see if object in $v0 is an instance of the target class
     *
     * @param endLabel String label for end of evaluation
     * @param falseEvalLabel String label for evaluating to false
     * @param targetClass ClassTreeNode to check type compatibility for
     */
    private void genTypeCheckCode(String endLabel, String falseEvalLabel,
                                  ClassTreeNode targetClass){
        assemblySupport.genComment("load actual object type into $v0");
        assemblySupport.genLoadWord(assemblySupport.getResultReg(),
                0, assemblySupport.getResultReg());

        assemblySupport.genComment("load target type start idx into $v1");
        assemblySupport.genLoadImm("$v1", classList.indexOf(targetClass));

        assemblySupport.genComment("branch to false if $v0 < $v1");
        assemblySupport.genCondBlt(assemblySupport.getResultReg(), "$v1", falseEvalLabel);

        assemblySupport.genComment("load target type end idx into $v1");
        assemblySupport.genLoadImm("$v1",
                classList.indexOf(targetClass) + targetClass.getNumDescendants());

        assemblySupport.genComment("branch to false if $v0 > $v1");
        assemblySupport.genCondBgt(assemblySupport.getResultReg(), "$v1", falseEvalLabel);

        assemblySupport.genLoadImm("$v0", -1);
        assemblySupport.genUncondBr(endLabel);
    }

    /**
     * Generate MIPS code for an instanceof expression node
     *
     * @param node the instanceof expression node
     * @return result of the visit
     */
    @Override
    public Object visit(InstanceofExpr node) {
        String endInstanceofLabel = assemblySupport.getLabel();
        String notInstanceofLabel = assemblySupport.getLabel();
        ClassTreeNode targetClass = currClassNode.getClassMap().get(node.getType());

        node.getExpr().accept(this);
        assemblySupport.genComment("expr to check instanceof is in $v0");

        genTypeCheckCode(endInstanceofLabel, notInstanceofLabel, targetClass);

        assemblySupport.genComment("evaluation to false for instance of");
        assemblySupport.genLabel(notInstanceofLabel);
        assemblySupport.genMove(assemblySupport.getResultReg(),
                assemblySupport.getZeroReg());

        assemblySupport.genComment("end of instance of expr");
        assemblySupport.genLabel(endInstanceofLabel);

        return null;
    }

    /**
     * Generate MIPS code for a cast expression node
     *
     * @param node the cast expression node
     * @return result of the visit
     */
    @Override
    public Object visit(CastExpr node) {
        String endCastLabel = assemblySupport.getLabel();
        String notCastLabel = assemblySupport.getLabel();
        ClassTreeNode targetClass = currClassNode.getClassMap().get(node.getType());

        node.getExpr().accept(this);
        assemblySupport.genComment("expr to check cast type for is in $v0");

        //we want the variable in $v0 at the end of the cast checking
        genPush(assemblySupport.getResultReg());

        //only need to generate code when downcasting
        if(!node.getUpCast()) {
            genTypeCheckCode(endCastLabel, notCastLabel, targetClass);

            assemblySupport.genComment("throwing class cast exception");
            assemblySupport.genLabel(notCastLabel);
            assemblySupport.genComment("object's type id passed via $t0");
            assemblySupport.genMove(assemblySupport.getT0Reg(),
                    assemblySupport.getResultReg());
            assemblySupport.genComment("target type id passed via $t1");
            assemblySupport.genLoadImm(assemblySupport.getT1Reg(),
                    classList.indexOf(targetClass));
            assemblySupport.genDirCall("_class_cast_error");

            assemblySupport.genComment("end of cast  expr");
            assemblySupport.genLabel(endCastLabel);
        }

        genPop(assemblySupport.getResultReg());

        return null;
    }

    /**
     * Return the location of the left side of the assign expression
     *
     * @param varNode the assignment expression node
     * @return Location of the left side of the assign expression
     */
    private Location getAssignNodeLocation(AssignExpr varNode) {
        String varName = varNode.getName();
        if(varNode.getRefName() != null) {
            //this.something
            if (varNode.getRefName().equals("this")) {
                //look for the variable at the field's scope
                return (Location) varSymbolTable.peek(varName,
                        getSymTableFieldLevel(currClassNode));
            }
            //super.something
            else {
                return (Location) varSymbolTable.peek(varName,
                        getSymTableFieldLevel(currClassNode.getParent()));
            }
        }
        else{
            return (Location) varSymbolTable.lookup(varName);
        }
    }

    /**
     * Generate MIPS code for an assignment expression node
     *
     * @param node the assignment expression node
     * @return result of the visit
     */
    @Override
    public Object visit(AssignExpr node) {
        Location varLocation = getAssignNodeLocation(node);

        //evaluate the expr
        assemblySupport.genComment("evaluate right side of assign expr");
        node.getExpr().accept(this);

        //move result from expr from $v0 into its position on the stack
        assemblySupport.genStoreWord(assemblySupport.getResultReg(),
                varLocation.getOffset(), varLocation.getBaseReg());

        return null;
    }

    /**
     * Generate MIPS code for a shortcut assign expr up until
     * the arithmetic operation.
     *
     * @param node the ShortcutAssignExpr node
     */
    public void visitShortcutAssignExpr(ShortcutAssignExpr node) {
        Location varLocation = getAssignNodeLocation(node);

        assemblySupport.genComment("load value of left expr into $v0");
        assemblySupport.genLoadWord(assemblySupport.getResultReg(),
                varLocation.getOffset(), varLocation.getBaseReg());

        //push the value of the left expr onto stack
        genPush(assemblySupport.getResultReg());

        //evaluate the right expr
        assemblySupport.genComment("evaluate right side of plus equals expr");
        node.getExpr().accept(this);

        //pop the value of the left expr off of stack
        genPop("$v1");
    }

    /**
     * Generate MIPS code for a plus equals expression node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    public Object visit(PlusEqualsExpr node) {
        Location varLocation = getAssignNodeLocation(node);

        visitShortcutAssignExpr(node);
        assemblySupport.genAdd(assemblySupport.getResultReg(),
                assemblySupport.getResultReg(), "$v1");

        //move result from expr from $v0 into its position on the stack
        assemblySupport.genStoreWord(assemblySupport.getResultReg(),
                varLocation.getOffset(), varLocation.getBaseReg());

        return null;
    }

    /**
     * Generate MIPS code for a binary comparison equals expression node
     *
     * @param node the binary comparison equals expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryCompEqExpr node) {
        String eq = assemblySupport.getLabel();
        String endComp = assemblySupport.getLabel();
        assemblySupport.genComment("!= expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genComment("branch to eq label if left == right");
        assemblySupport.genCondBeq("$v1", assemblySupport.getResultReg(), eq);
        assemblySupport.genMove(
                assemblySupport.getResultReg(), assemblySupport.getZeroReg());
        assemblySupport.genUncondBr(endComp);

        assemblySupport.genComment("left expr == right expr");
        assemblySupport.genLabel(eq);
        assemblySupport.genLoadImm(assemblySupport.getResultReg(), -1);

        assemblySupport.genLabel(endComp);

        return null;
    }

    /**
     * Generate MIPS code for a binary comparison not equals expression node
     *
     * @param node the binary comparison not equals expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryCompNeExpr node) {
        assemblySupport.genComment("!= expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genComment("if left != right, their difference != 0");
        assemblySupport.genSub(assemblySupport.getResultReg(),
                assemblySupport.getResultReg(), "$v1");

        return null;
    }

    /**
     * Generate MIPS code for a binary comparison less than expression node
     *
     * @param node the binary comparison less than expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryCompLtExpr node) {
        String lt = assemblySupport.getLabel();
        String endComp = assemblySupport.getLabel();

        assemblySupport.genComment("< expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genComment("branch to lt label if left expr < right expr");
        assemblySupport.genCondBlt("$v1", assemblySupport.getResultReg(), lt);
        assemblySupport.genMove(
                assemblySupport.getResultReg(), assemblySupport.getZeroReg());
        assemblySupport.genUncondBr(endComp);

        assemblySupport.genComment("left expr < right expr");
        assemblySupport.genLabel(lt);
        assemblySupport.genLoadImm(assemblySupport.getResultReg(), -1);

        assemblySupport.genLabel(endComp);

        return null;
    }

    /**
     * Generate MIPS code for a binary comparison less than or equal to expression node
     *
     * @param node the binary comparison less than or equal to expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryCompLeqExpr node) {
        String leq = assemblySupport.getLabel();
        String endComp = assemblySupport.getLabel();

        assemblySupport.genComment("<= expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genComment("branch to leq label if left expr <= right expr");
        assemblySupport.genCondBleq("$v1", assemblySupport.getResultReg(), leq);
        assemblySupport.genMove(
                assemblySupport.getResultReg(), assemblySupport.getZeroReg());
        assemblySupport.genUncondBr(endComp);

        assemblySupport.genComment("left expr <= right expr");
        assemblySupport.genLabel(leq);
        assemblySupport.genLoadImm(assemblySupport.getResultReg(), -1);

        assemblySupport.genLabel(endComp);

        return null;
    }

    /**
     * Generate MIPS code for a binary comparison greater than expression node
     *
     * @param node the binary comparison greater than expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryCompGtExpr node) {
        String gt = assemblySupport.getLabel();
        String endComp = assemblySupport.getLabel();

        assemblySupport.genComment("> expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genComment("branch to gt label if left expr > right expr");
        assemblySupport.genCondBgt("$v1", assemblySupport.getResultReg(), gt);
        assemblySupport.genMove(
                assemblySupport.getResultReg(), assemblySupport.getZeroReg());
        assemblySupport.genUncondBr(endComp);

        assemblySupport.genComment("left expr > right expr");
        assemblySupport.genLabel(gt);
        assemblySupport.genLoadImm(assemblySupport.getResultReg(), -1);

        assemblySupport.genLabel(endComp);

        return null;
    }

    /**
     * Generate MIPS code for a binary comparison greater than or equal to expression node
     *
     * @param node the binary comparison greater to or equal to expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryCompGeqExpr node) {
        String geqLabel = assemblySupport.getLabel();
        String endGeqLabel = assemblySupport.getLabel();

        assemblySupport.genComment(">= expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genComment("branch to geq label if left expr >= right expr");
        assemblySupport.genCondBgeq("$v1", assemblySupport.getResultReg(), geqLabel);
        assemblySupport.genMove(
                assemblySupport.getResultReg(), assemblySupport.getZeroReg());
        assemblySupport.genUncondBr(endGeqLabel);

        assemblySupport.genComment("left expr >= right expr");
        assemblySupport.genLabel(geqLabel);
        assemblySupport.genLoadImm(assemblySupport.getResultReg(), -1);

        assemblySupport.genLabel(endGeqLabel);

        return null;
    }

    /**
     * Generate MIPS code for a binary arithmetic plus expression node
     *
     * @param node the binary arithmetic plus expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryArithPlusExpr node) {
        assemblySupport.genComment("binary arithmetic plus expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genAdd(assemblySupport.getResultReg(), "$v1",
                assemblySupport.getResultReg());

        return null;
    }

    /**
     * Generate MIPS code for a binary arithmetic minus expression node
     *
     * @param node the binary arithmetic minus expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryArithMinusExpr node) {
        assemblySupport.genComment("binary arithmetic minus expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genSub(assemblySupport.getResultReg(), "$v1",
                assemblySupport.getResultReg());

        return null;
    }

    /**
     * Generate MIPS code for a binary arithmetic times expression node
     *
     * @param node the binary arithmetic times expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryArithTimesExpr node) {
        assemblySupport.genComment("binary arithmetic times expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genMul(assemblySupport.getResultReg(), "$v1",
                assemblySupport.getResultReg());

        return null;
    }

    /**
     * Generate MIPS code for a binary arithmetic divide expression node
     *
     * @param node the binary arithmetic divide expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryArithDivideExpr node) {
        assemblySupport.genComment("binary arithmetic divide expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("throw divide by zero exception if divisor == 0");
        assemblySupport.genCondBeq(assemblySupport.getResultReg(),
                assemblySupport.getZeroReg(), "_divide_zero_error");

        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genDiv(assemblySupport.getResultReg(), "$v1",
                assemblySupport.getResultReg());

        return null;
    }

    /**
     * Generate MIPS code for a binary arithmetic modulus expression node
     *
     * @param node the binary arithmetic modulus expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryArithModulusExpr node) {
        assemblySupport.genComment("binary arithmetic modulus expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);
        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);
        assemblySupport.genComment("pop result of left expr off stack, into $v1");
        genPop("$v1");

        assemblySupport.genMod(assemblySupport.getResultReg(), "$v1",
                assemblySupport.getResultReg());

        return null;
    }

    /**
     * Generate MIPS code for a binary logical AND expression node
     *
     * @param node the binary logical AND expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryLogicAndExpr node) {
        String endAndExpr = assemblySupport.getLabel();
        assemblySupport.genComment("binary logical AND expr");

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);

        assemblySupport.genComment("short-circuit & stop evaluation if left expr false");
        assemblySupport.genCondBeq(assemblySupport.getResultReg(),
                assemblySupport.getZeroReg(), endAndExpr);

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);

        assemblySupport.genNewLine();
        assemblySupport.genComment("end of AND expr");
        assemblySupport.genLabel(endAndExpr);

        return null;
    }

    /**
     * Generate MIPS code for a binary logical OR expression node
     *
     * @param node the binary logical OR expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryLogicOrExpr node) {
        String endOrExpr = assemblySupport.getLabel();

        assemblySupport.genComment("binary logical OR expr");
        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);

        assemblySupport.genComment("short-circuit & stop evaluation if left expr true");
        assemblySupport.genCondBne(assemblySupport.getResultReg(),
                assemblySupport.getZeroReg(), endOrExpr);

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);

        assemblySupport.genNewLine();
        assemblySupport.genComment("end of OR expr");
        assemblySupport.genLabel(endOrExpr);

        return null;
    }


    /**
     * Generate MIPS code for a binary bitwise OR expression node
     *
     * @param node the binary bitwise OR expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryLogicBitOrExpr node) {
        assemblySupport.genComment("binary bitwise OR expr");
        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);

        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);

        assemblySupport.genComment("pop result of left expr off stack onto $v1");
        genPop("$v1");

        assemblySupport.genOr(assemblySupport.getResultReg(),
                assemblySupport.getResultReg(), "$v1");

        return null;
    }

    /**
     * Generate MIPS code for a binary bitwise AND expression node
     *
     * @param node the binary bitwise AND expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryLogicBitAndExpr node) {
        assemblySupport.genComment("binary bitwise AND expr");
        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);

        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);

        assemblySupport.genComment("pop result of left expr off stack onto $v1");
        genPop("$v1");

        assemblySupport.genAnd(assemblySupport.getResultReg(),
                assemblySupport.getResultReg(), "$v1");

        return null;
    }

    /**
     * Generate MIPS code for a binary bitwise XOR expression node
     *
     * @param node the binary bitwise XOR expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryLogicBitXorExpr node) {
        assemblySupport.genComment("binary bitwise XOR expr");
        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);

        assemblySupport.genComment("push result of left expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);

        assemblySupport.genComment("pop result of left expr off stack onto $v1");
        genPop("$v1");

        assemblySupport.genXor(assemblySupport.getResultReg(),
                assemblySupport.getResultReg(), "$v1");

        return null;
    }

    /**
     * Generate MIPS code for a binary signed left shift expression node
     *
     * @param node the binary signed left shift expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryLogicLeftShiftExpr node) {
        String endLeftShiftExpr = assemblySupport.getLabel();

        assemblySupport.genComment("binary signed left shift expr");
        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);

        assemblySupport.genComment("if the right expr is 0, don't do any shifts");
        assemblySupport.genCondBeq(assemblySupport.getResultReg(),
                assemblySupport.getZeroReg(), endLeftShiftExpr);

        assemblySupport.genComment("push result of right expr onto stack");
        genPush(assemblySupport.getResultReg());

        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);

        assemblySupport.genComment("pop result of right expr off stack onto $v1");
        genPop("$v1");

        assemblySupport.genComment("shift left expr($v0) by $v1 bits");
        assemblySupport.genShiftLeft(assemblySupport.getResultReg(),
                assemblySupport.getResultReg(), "$v1");

        assemblySupport.genComment("end of signed left shift expr");
        assemblySupport.genLabel(endLeftShiftExpr);

        return null;
    }

    /**
     * Generate MIPS code for a binary signed right shift expression node
     *
     * @param node the binary signed right shift expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryLogicRightShiftExpr node) {
        String endRightShiftExpr = assemblySupport.getLabel();
        String divLeftExprLabel = assemblySupport.getLabel();

        assemblySupport.genComment("binary signed right shift expr");
        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);

        assemblySupport.genComment("if the right expr is 0, don't do any shifts");
        assemblySupport.genCondBeq(assemblySupport.getResultReg(),
                assemblySupport.getZeroReg(), endRightShiftExpr);

        assemblySupport.genComment("push result of right expr onto stack");
        genPush(assemblySupport.getResultReg());


        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);

        assemblySupport.genComment("pop result of right expr off stack onto $v1");
        genPop("$v1");

        assemblySupport.genComment("find the positive number of bits to shift, store in $t1");
        assemblySupport.genMod(assemblySupport.getT1Reg(), "$v1", 32);
        assemblySupport.genAdd(assemblySupport.getT1Reg(),
                assemblySupport.getT1Reg(), 32);
        assemblySupport.genMod(assemblySupport.getT1Reg(),
                assemblySupport.getT1Reg(), 32);

        assemblySupport.genComment("Load -1 into $t2, if the result is -1, break");
        assemblySupport.genLoadImm(assemblySupport.getT2Reg(), -1);

        assemblySupport.genComment("shift left expr($v0) by $t1 bits");
        assemblySupport.genComment("same as dividing $v0 $t1 times");
        assemblySupport.genLabel(divLeftExprLabel);
        assemblySupport.genCondBeq(assemblySupport.getResultReg(),
                assemblySupport.getT2Reg(), endRightShiftExpr);
        assemblySupport.genDiv(assemblySupport.getResultReg(),
                assemblySupport.getResultReg(), 2);
        assemblySupport.genSub(assemblySupport.getT1Reg(),
                assemblySupport.getT1Reg(), 1);
        assemblySupport.genCondBgt(assemblySupport.getT1Reg(),
                assemblySupport.getZeroReg(), divLeftExprLabel);

        assemblySupport.genComment("end of signed right shift expr");
        assemblySupport.genLabel(endRightShiftExpr);

        return null;
    }

    /**
     * Generate MIPS code for a binary unsigned right shift expression node
     *
     * @param node the binary signed right shift expression node
     * @return result of the visit
     */
    @Override
    public Object visit(BinaryLogicUnsignedShiftExpr node) {
        String endUnsignedShiftExpr = assemblySupport.getLabel();

        assemblySupport.genComment("binary unsigned right shift expr");
        assemblySupport.genComment("evaluate right expr");
        node.getRightExpr().accept(this);

        assemblySupport.genComment("if the right expr is 0, don't do any shifts");
        assemblySupport.genCondBeq(assemblySupport.getResultReg(),
                assemblySupport.getZeroReg(), endUnsignedShiftExpr);

        assemblySupport.genComment("push result of right expr onto stack");
        genPush(assemblySupport.getResultReg());


        assemblySupport.genComment("evaluate left expr");
        node.getLeftExpr().accept(this);

        assemblySupport.genComment("pop result of right expr off stack onto $v1");
        genPop("$v1");

        assemblySupport.genComment("shift left expr($v0) by $v1 bits");
        assemblySupport.genShiftRight(assemblySupport.getResultReg(),
                assemblySupport.getResultReg(), "$v1");

        assemblySupport.genComment("end of unsigned right shift expr");
        assemblySupport.genLabel(endUnsignedShiftExpr);

        return null;
    }



    /**
     * Generate MIPS code for a unary negation expression node
     *
     * @param node the unary negation expression node
     * @return result of the visit
     */
    @Override
    public Object visit(UnaryNegExpr node) {
        assemblySupport.genComment("evaluate value to negate");
        node.getExpr().accept(this);

        assemblySupport.genComment("negate value in $v0 ");
        assemblySupport.genNeg(assemblySupport.getResultReg(),
                assemblySupport.getResultReg());
        return null;
    }

    /**
     * Generate MIPS code for a unary NOT expression node
     *
     * @param node the unary NOT expression node
     * @return result of the visit
     */
    @Override
    public Object visit(UnaryNotExpr node) {
        String trueLabel = assemblySupport.getLabel();
        String endNotLabel = assemblySupport.getLabel();

        assemblySupport.genComment("evaluate value to NOT");
        node.getExpr().accept(this);

        assemblySupport.genComment("if value in $v0 = 0, branch to true label");
        assemblySupport.genCondBeq(assemblySupport.getResultReg(),
                assemblySupport.getZeroReg(), trueLabel);
        assemblySupport.genMove(assemblySupport.getResultReg(),
                assemblySupport.getZeroReg());
        assemblySupport.genUncondBr(endNotLabel);

        assemblySupport.genComment("True label");
        assemblySupport.genLabel(trueLabel);
        assemblySupport.genLoadImm(assemblySupport.getResultReg(), -1);

        assemblySupport.genLabel(endNotLabel);
        return null;
    }

    /**
     * Generate MIPS code for a unary bitwise NOT expression node
     *
     * @param node the unary NOT expression node
     * @return result of the visit
     */
    @Override
    public Object visit(UnaryBitNotExpr node) {
        assemblySupport.genComment("evaluate value to NOT");
        node.getExpr().accept(this);

        assemblySupport.genComment("not value in $v0 ");
        assemblySupport.genNot(assemblySupport.getResultReg(),
                assemblySupport.getResultReg());
        return null;
    }

    /**
     * Generate MIPS code for a unary increment expression node
     *
     * @param node the unary increment expression node
     * @return result of the visit
     */
    @Override
    public Object visit(UnaryIncrExpr node) {
        assemblySupport.genComment("evaluate variable to increment");
        Location varLocation = (Location)node.getExpr().accept(this);

        if(node.isPostfix()){
            assemblySupport.genComment("increment value in $v0 and store result in $v1");
            assemblySupport.genAdd("$v1", assemblySupport.getResultReg(), 1);
            assemblySupport.genComment("save incremented value into variable");
            assemblySupport.genStoreWord("$v1",
                    varLocation.getOffset(), varLocation.getBaseReg());
        }
        else {
            assemblySupport.genComment("increment value in $v0");
            assemblySupport.genAdd(assemblySupport.getResultReg(),
                    assemblySupport.getResultReg(), 1);
            assemblySupport.genComment("save incremented value into variable");
            assemblySupport.genStoreWord(assemblySupport.getResultReg(),
                    varLocation.getOffset(), varLocation.getBaseReg());
        }

        return null;
    }

    /**
     * Generate MIPS code for a unary decrement expression node
     *
     * @param node the unary decrement expression node
     * @return result of the visit
     */
    @Override
    public Object visit(UnaryDecrExpr node) {
        assemblySupport.genComment("evaluate variable to decrement");
        Location varLocation = (Location)node.getExpr().accept(this);

        if(node.isPostfix()){
            assemblySupport.genComment("decrement value in $v0 and store result in $v1");
            assemblySupport.genSub("$v1", assemblySupport.getResultReg(), 1);
            assemblySupport.genComment("save decremented value into variable");
            assemblySupport.genStoreWord("$v1",
                    varLocation.getOffset(), varLocation.getBaseReg());
        }
        else {
            assemblySupport.genComment("decrement value in $v0");
            assemblySupport.genSub(assemblySupport.getResultReg(),
                    assemblySupport.getResultReg(), 1);
            assemblySupport.genComment("save decremented value into variable");
            assemblySupport.genStoreWord(assemblySupport.getResultReg(),
                    varLocation.getOffset(), varLocation.getBaseReg());
        }

        return null;
    }

    /**
     * Generate MIPS code for a variable expression node
     *
     * @param node the variable expression node
     * @return Location of the variable
     */
    @Override
    public Object visit(VarExpr node) {
        Location varLocation = null;
        VarExpr refExpr = (VarExpr) node.getRef();
        String varName = node.getName();
        //variable with no reference
        if (refExpr == null) {
            if(varName.equals("this")) {
                assemblySupport.genComment("move reference to \"this\" obj to $v0");
                assemblySupport.genMove(assemblySupport.getResultReg(),
                        assemblySupport.getArg0Reg());
            }
            else if(varName.equals("super")) {
                assemblySupport.genComment("load reference to \"this\" obj to $v0");
                assemblySupport.genLoadAddr(assemblySupport.getResultReg(),
                        currClassNode.getParent().getName() + "_template");
            }
            else if(varName.equals("null")){
                assemblySupport.genComment("load null(0) to $v0");
                assemblySupport.genMove(assemblySupport.getResultReg(),
                        assemblySupport.getZeroReg());
            }
            else {
                varLocation = (Location)varSymbolTable.lookup(varName);
                assemblySupport.genComment("load variable from stack to $v0");
                assemblySupport.genLoadWord(assemblySupport.getResultReg(),
                        varLocation.getOffset(), varLocation.getBaseReg());
            }
        }
        //variable with reference
        else {
            //this.something
            if (refExpr.getName().equals("this")) {
                //look for the variable at the field's scope
                varLocation = (Location)varSymbolTable.peek(varName,
                    getSymTableFieldLevel(currClassNode));
            }
            //super.something
            else {
                varLocation = (Location)varSymbolTable.peek(varName,
                    getSymTableFieldLevel(currClassNode.getParent()));
            }
            assemblySupport.genComment("load field from stack to $v0");
            assemblySupport.genLoadWord(assemblySupport.getResultReg(),
                    varLocation.getOffset(), varLocation.getBaseReg());
        }
        return varLocation;
    }

    /**
     * Generate MIPS code for an int constant expression node
     *
     * @param node the int constant expression node
     * @return result of the visit
     */
    @Override
    public Object visit(ConstIntExpr node) {
        assemblySupport.genComment("load int value into $v0");
        assemblySupport.genLoadImm(assemblySupport.getResultReg(), node.getIntConstant());
        return null;
    }

    /**
     * Generate MIPS code for a boolean constant expression node
     *
     * @param node the boolean constant expression node
     * @return result of the visit
     */
    @Override
    public Object visit(ConstBooleanExpr node) {
        //bool is 1 if true and 0 if false
        int bool = (node.getConstant().equals("true")) ? -1 : 0;

        assemblySupport.genComment("load boolean value into $v0");
        assemblySupport.genLoadImm(assemblySupport.getResultReg(), bool);

        return null;
    }

    /**
     * Generate MIPS code for a string constant expression node
     *
     * @param node the string constant expression node
     * @return result of the visit
     */
    @Override
    public Object visit(ConstStringExpr node) {
        //find the label which corresponds to the string constant
        String constLabel = "String_const_" + stringConstList.indexOf(node.getConstant());

        assemblySupport.genComment("load address of string constant label");
        assemblySupport.genLoadAddr(assemblySupport.getResultReg(), constLabel);

        return null;
    }

    /**
     * Generate MIPS code for pushing register to top of stack
     *
     * @param srcReg String containing the source register
     */
    private void genPush(String srcReg){
        //decrement stack pointer
        assemblySupport.genAdd(assemblySupport.getSPReg(),
                assemblySupport.getSPReg(), -4);

        //push srcReg onto top of stack
        assemblySupport.genStoreWord(srcReg, 0, assemblySupport.getSPReg());
    }

    /**
     * Generate MIPS code for popping top of stack to the destination register
     *
     * @param destReg String containing the source register
     */
    private void genPop(String destReg){
        //pop top of stack to destReg
        assemblySupport.genLoadWord(destReg, 0, assemblySupport.getSPReg());

        //increment stack pointer
        assemblySupport.genAdd(assemblySupport.getSPReg(),
                assemblySupport.getSPReg(), 4);
    }

    /**
     * Generate method prolog
     */
    private void genProlog() {
        assemblySupport.genComment("Starting prolog for method");
        //pushing $ra, $fp onto stack
        genPush(assemblySupport.getRAReg());
        genPush(assemblySupport.getFPReg());

        //make room on stack for local vars and update $sp, $fp
        assemblySupport.genComment("add space for " + localVarCountStack.peek() +
                " local vars in the stack frame");
        assemblySupport.genSub(assemblySupport.getFPReg(), assemblySupport.getSPReg(),
                localVarCountStack.peek() * 4);
        assemblySupport.genMove(
                assemblySupport.getSPReg(), assemblySupport.getFPReg());
    }

    /**
     * Generate method epilog
     */
    private void genEpilog() {
        assemblySupport.genComment("Starting epilog of method");

        assemblySupport.genComment("pop space for local vars");
        assemblySupport.genAdd(assemblySupport.getSPReg(), assemblySupport.getFPReg(),
                localVarCountStack.peek() * 4);

        assemblySupport.genComment("pop the saved $s registers and $ra and $fp");
        genPop(assemblySupport.getFPReg());
        genPop(assemblySupport.getRAReg());

        assemblySupport.genComment("pop actual parameters");
        assemblySupport.genAdd(assemblySupport.getSPReg(), assemblySupport.getSPReg(),
                paramCountStack.peek() * 4);

        assemblySupport.genComment("return from method");
        assemblySupport.genRetn();
    }

    /**
     * Generate MIPS code to save registers before calling a method
     */
    private void genCallerPushes(){
        assemblySupport.genComment("Saving important registers");
        genPush(assemblySupport.getArg0Reg());
        genPush(assemblySupport.getThisReg());
    }

    /**
     * Generate MIPS code to restore saved registers after calling a method
     */
    private void genCallerPops(){
        assemblySupport.genComment("Restoring important registers");
        genPop(assemblySupport.getThisReg());
        genPop(assemblySupport.getArg0Reg());
    }
}
