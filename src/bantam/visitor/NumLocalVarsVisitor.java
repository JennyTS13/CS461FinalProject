/*
 * File: NumLocalVarsVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 3
 * Date: March 11, 2017
 */

package bantam.visitor;

import bantam.ast.*;
import bantam.lexer.Lexer;
import bantam.parser.Parser;
import bantam.util.ClassTreeNode;
import javafx.util.Pair;

import java.io.StringReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class NumLocalVarsVisitor extends Visitor {

    /**
     * A map of method names to their local variable and parameter count
     */
    private Map<String, Integer> methodToLocalVarCount;

    /**
     * Returns a mapping of method names to the number of
     * local variables and parameters in the method
     *
     * @param ast the AST node forming the root of the tree
     * @return mapping of method names to the number of local variables and parameters
     */
    public Map<String,Integer> getNumLocalVars(Program ast) {
        methodToLocalVarCount = new HashMap<>();
        ast.accept(this);
        return methodToLocalVarCount;
    }

    /**
     * Returns a mapping of method names to the number of
     * local variables and parameters in the method
     *
     * @param node the ClassTreeNode of the class
     * @return mapping of method names to the number of local variables and parameters
     */
    public Map<String,Integer> getNumLocalVars(ClassTreeNode node) {
        methodToLocalVarCount = new HashMap<>();
        node.getASTNode().accept(this);
        return methodToLocalVarCount;
    }

    /**
     * Traverses the contents of the class, adding its method names and their number of
     * parameters and local variables to the map.
     *
     * @param node the class node
     * @return result of the visit
     */
    @Override
    public Object visit(Class_ node) {
        for (Iterator it = node.getMemberList().iterator(); it.hasNext(); ) {
            Pair<String, Integer> nameToNumLocalVar =
                    (Pair<String,Integer>)((Member) it.next()).accept(this);
            if(nameToNumLocalVar != null) {
                methodToLocalVarCount.put(node.getName() + "." + nameToNumLocalVar.getKey(),
                        nameToNumLocalVar.getValue());
            }
        }
        return null;
    }

    /**
     * Does not traverse farther down the field node
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Field node) {
        return null;
    }

    /**
     * Traverses down the method node, searching for the
     * total number of local variables and parameters
     *
     * @param node the method node
     * @return Pair of method name to the number of local variable and parameters
     */
    @Override
    public Object visit(Method node) {
        Pair<String, Integer> nameToNumLocalVar =
                new Pair<>(node.getName(),
                        node.getFormalList().getSize() +
                                (Integer)node.getStmtList().accept(this));
        return nameToNumLocalVar;
    }

    /**
     * Traverses the statement list, searching for the
     * total number of local variables declared
     *
     * @param node the statement list node
     * @return total number of local variables declared
     */
    @Override
    public Object visit(StmtList node) {
        int numLocalVar = 0;
        for (Iterator it = node.iterator(); it.hasNext(); ) {
            numLocalVar += (Integer)((Stmt) it.next()).accept(this);
        }
        return numLocalVar;
    }

    /**
     * Does not traverse farther down the expr statement node
     *
     * @param node the expression statement node
     * @return result of the visit
     */
    @Override
    public Object visit(ExprStmt node) {
        return 0;
    }

    /**
     * Does not traverse farther down the declaration statement node
     *
     * @param node the declaration statement node
     * @return result of the visit
     */
    @Override
    public Object visit(DeclStmt node) {
        return 1;
    }

    /**
     * Traverses down the body of the if statement, searching for local variables
     *
     * @param node the if statement node
     * @return result of the visit
     */
    @Override
    public Object visit(IfStmt node) {
        if (node.getElseStmt() != null) {
            return (Integer)node.getThenStmt().accept(this) +
                    (Integer)node.getElseStmt().accept(this);
        }
        return node.getThenStmt().accept(this) ;
    }

    /**
     * Traverses down the body of the while statement, searching for local variables
     *
     * @param node the while statement node
     * @return result of the visit
     */
    @Override
    public Object visit(WhileStmt node) {
        return node.getBodyStmt().accept(this);
    }

    /**
     * Traverses down the body of the for statement, searching for local variables
     *
     * @param node the for statement node
     * @return result of the visit
     */
    @Override
    public Object visit(ForStmt node) {
        return node.getBodyStmt().accept(this);
    }

    /**
     * Does not traverse farther down the break statement node
     *
     * @param node the break statement node
     * @return result of the visit
     */
    @Override
    public Object visit(BreakStmt node) {
        return 0;
    }

    /**
     * Does not traverse farther down the return statement node
     * @param node the return statement node
     * @return result of the visit
     */
    @Override
    public Object visit(ReturnStmt node) {
        return 0;
    }

    /**
     * Does not traverse farther down the block statement node
     *
     * @param node the block statement node
     * @return result of the visit
     */
    @Override
    public Object visit(BlockStmt node) {
        return node.getStmtList().accept(this);
    }

    /**
     * very simple test
     * @param args unused
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {
        NumLocalVarsVisitor numLocalVarsVisitor = new NumLocalVarsVisitor();
        Parser parser = new Parser(new Lexer(
                new StringReader("class Main { int a = 3; " +
                        "void foo(){ String s = \"foo\"; }" +
                        "void bar(String a, int b) { int c = 4; } }")));
        System.out.println("Main.foo should have 1, Main.bar should have 3: " +
                numLocalVarsVisitor.getNumLocalVars((Program)parser.parse().value));
    }
}
