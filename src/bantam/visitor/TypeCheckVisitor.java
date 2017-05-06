/*
 * File: TypeCheckVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 3
 * Date: March 11, 2017
 */

package bantam.visitor;

import bantam.ast.*;
import bantam.util.ClassTreeNode;
import bantam.util.ErrorHandler;
import bantam.util.SymbolTable;
import java_cup.runtime.Symbol;

import java.util.*;
import java.util.stream.StreamSupport;

/**
 * Visitor class to traverse the class ast to type check
 */
public class TypeCheckVisitor extends Visitor {

    /** Maps class names to ClassTreeNode objects describing the class */
    private Hashtable<String,ClassTreeNode> classMap;

    /**
     * ClassTreeNode of class we are traversing (used to access parent)
     */
    private ClassTreeNode currClassTreeNode;

    /**
     * Symbol table for variables of provided class
     * Field name to variable type
     */
    private SymbolTable varSymbolTable;

    /**
     * Symbol table for methods of provided class
     * Method name to return type
     */
    private SymbolTable methodSymbolTable;

    /**
     * Set of keywords not available for names
     */
    private Set<String> keywordSet = new HashSet<>();

    /**
     * Set of String of legal types for this class
     */
    private Set<String> legalTypeSet = new HashSet<>();

    /**
     * Set of String of legal object types for this class
     */
    private Set<String> legalObjectTypeSet = new HashSet<>();

    /**
     * Error handler used for duplicate fields
     */
    private ErrorHandler errorHandler;

    /**
     * Filename of the file that the field is found in
     */
    private String fileName;

    /**
     * Adds the class's fields to its variable symbol table traversing down the tree
     * Type check all nodes moving back up the tree
     *
     * @param classMap Hashtable of class names to ClassTreeNode objects
     * @param node ClassTreeNode of the class
     * @param errorHandler ErrorHandler to log the errors found during traversal
     */
    public void typeCheckClass(Hashtable<String,ClassTreeNode> classMap,
                               ClassTreeNode node, ErrorHandler errorHandler) {
        this.classMap = node.getClassMap();
        this.errorHandler = errorHandler;

        fileName = node.getASTNode().getFilename();
        currClassTreeNode = node;
        varSymbolTable = currClassTreeNode.getVarSymbolTable();
        methodSymbolTable = currClassTreeNode.getMethodSymbolTable();

        //Set up sets of all legal types and all legal objects
        classMap.keySet().forEach(className -> {
            legalObjectTypeSet.add(className);
            legalObjectTypeSet.add(className+"[]");
        });
        legalObjectTypeSet.addAll(Arrays.asList("boolean[]", "int[]"));

        legalTypeSet.addAll(legalObjectTypeSet);
        legalTypeSet.addAll(Arrays.asList("boolean", "int"));

        node.getASTNode().accept(this);
    }

    /**
     * Check to see if the second type conforms to the first type.
     * Log an error for the corresponding node if not compatible.
     *
     * @param node the node to type check for
     * @param expectedType String of expected type
     * @param actualType String of actual type
     */
    private void checkTypeCompatibility(ASTNode node, String expectedType, String actualType){
        if(!isTypeOf(actualType, expectedType, classMap)){
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Incompatible types. Expected: " + expectedType +
                            " Actual: " + actualType);
        }
    }

    /**
     * Check to see if the type is valid. If not, log an error for the corresponding node.
     *
     * @param node the node to type check for
     * @param nodeType type of the node
     * @return boolean indicating if the type is valid
     */
    private boolean isTypeValid(ASTNode node, String nodeType){
        if(!legalTypeSet.contains(nodeType)){
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Invalid type: " + nodeType);
            return false;
        }
        return true;
    }

    /**
     * Check to see it the type is a valid object type.
     * If not, log an error for the corresponding node.
     *
     * @param node the node to type check for
     * @param nodeType type of the node
     * @return boolean indicating if the object type is valid
     */
    private boolean isObjectTypeValid(ASTNode node, String nodeType){
        if(!legalObjectTypeSet.contains(nodeType)){
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Invalid object type: " + nodeType);
            return false;
        }
        return true;
    }

    /**
     * Returns boolean of whether the two types are equal
     *
     * @param type1 String of first type
     * @param type2 String of second type
     * @return
     */
    private static boolean areTypesEqual(String type1, String type2){
        Set<String> keywordSet = new HashSet<>();
        keywordSet.addAll(Arrays.asList("null", "void", "super",
                "this", "boolean", "int"));

        if(type1 != null && type2 != null) {
            //two types are equal
            if (type1.equals(type2)){
                return true;
            }
            //one is an object and one is null
            else if((type1.equals("null") && !keywordSet.contains(type2)) ||
                    (type2.equals("null") && !keywordSet.contains(type1))){
                return true;
            }
        }
        return false;
    }
    /**
     * Returns boolean of whether the second type conforms to the first type
     *
     * @param childType potential subtype
     * @param parentType supertype
     * @return boolean indicating if childType is an instance of parentType
     */
    public static boolean isTypeOf(String childType, String parentType,
                                    Hashtable<String,ClassTreeNode> classMap){
        Set<String> keywordSet = new HashSet<>();
        keywordSet.addAll(Arrays.asList("null", "void", "super",
                "this", "boolean", "int"));

        if(parentType != null && childType != null) {
            if(areTypesEqual(childType, parentType)){
                return true;
            }

            //Check to see that the types aren't primitives
            if (!keywordSet.contains(childType) && !keywordSet.contains(parentType)) {
                //checking array instanceof Object
                if (childType.contains("[]") && parentType.equals("Object")) {
                    return true;
                }
                //checking array instanceof array
                else if (childType.contains("[]") && parentType.contains("[]")) {
                    return isTypeOf(childType.replace("[]",""),
                            parentType.replace("[]",""), classMap);
                }
                //checking class instanceof class
                else if (!childType.contains("[]") && !parentType.contains("[]")){
                    ClassTreeNode parentNode = classMap.get(childType).getParent();
                    while (parentNode != null) {
                        if (parentType.equals(parentNode.getName())) {
                            return true;
                        }
                        parentNode = parentNode.getParent();
                    }
                }
            }
        }
        return false;
    }

    /**
     * Returns boolean of whether variable is declared in the class (excludes parent)
     *
     * @param includeField boolean indicating if we are including fields
     * @param varSymbolTable SymbolTable to search in
     * @param varName String name of variable
     * @return boolean indicating if variable was found in SymbolTable
     */
    private String peekVarInClass(boolean includeField, SymbolTable varSymbolTable,
                                  String varName){
        int currStartLevel = 0;
        if(currClassTreeNode.getParent() != null) {
            currStartLevel +=
                    currClassTreeNode.getParent().getVarSymbolTable().getCurrScopeLevel();
        }

        for(int i = varSymbolTable.getCurrScopeLevel()-1;
            i >= (includeField ? currStartLevel : currStartLevel + 1); i--){
            if(varSymbolTable.peek(varName, i) != null){
                return (String)varSymbolTable.peek(varName, i);
            }
        }
        return null;
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
     * Type check a field node
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Field node) {
        //Check that field type is valid
        if(isTypeValid(node, node.getType())) {
            //Check that init expr is of same type
            if (node.getInit() != null) {
                node.getInit().accept(this);
                checkTypeCompatibility(node, (String) varSymbolTable.peek(node.getName()),
                        node.getInit().getExprType());
            }
        }
        return null;
    }

    /**
     * Checks to see if return stmts in method matches the expected return type
     *
     * @param node the Method node
     * @param returnStmtList list of ReturnStmt in the Method node
     */
    private void checkMethodReturnType(Method node, List<ReturnStmt> returnStmtList){
        //Check to see that the return type matches
        returnStmtList.forEach(returnStmt -> {
            if (node.getReturnType().equals("void")){
                //Check to see if we're returning something for a non-void method
                if (returnStmt.getExpr() != null) {
                    errorHandler.register(2, fileName, returnStmt.getLineNum(),
                            "Cannot return a value from a method with void result type.");
                }
            }
            else{
                //Check to see that the return type matches
                checkTypeCompatibility(returnStmt, node.getReturnType(),
                        returnStmt.getExpr().getExprType());
            }
        });
    }

    /**
     * Logs errors if the appropriate return stmts are not present in the method
     *
     * @param node the Method node
     * @param returnStmtList list of ReturnStmt in the Method node
     */
    private void checkMethodReturnExists(Method node, List<ReturnStmt> returnStmtList){
        if(returnStmtList.size() == 0) {
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Missing return statement.");
        }
        //Check to see that the last stmt of a non-void method is a return
        else if(!node.getStmtList().get(node.getStmtList().getSize()-1).equals(
                returnStmtList.get(returnStmtList.size()-1))){
            errorHandler.register(2, fileName,
                    returnStmtList.get(returnStmtList.size()-1).getLineNum(),
                    "Last statement of a non-void method must be a return statement.");
        }
    }

    /**
     * Type check parameter and return type of a method node
     *
     * @param node the method node
     * @return result of the visit
     */
    @Override
    public Object visit(Method node) {
        //Check that method return type is valid
        if(node.getReturnType().equals("void") ||
                isTypeValid(node, node.getReturnType())) {
            varSymbolTable.enterScope();
            node.getFormalList().accept(this);

            List<ReturnStmt> returnStmtList =
                    (List<ReturnStmt>)node.getStmtList().accept(this);

            // Check that type of return stmt matches expected return type
            checkMethodReturnType(node, returnStmtList);

            // Check that return stmts are present in the method
            if(!node.getReturnType().equals("void")) {
                checkMethodReturnExists(node, returnStmtList);
            }
            varSymbolTable.exitScope();
        }
        return null;
    }

    /**
     * Add a formal node to var symbol table if its type is valid
     *
     * @param node the formal node
     * @return result of the visit
     */
    @Override
    public Object visit(Formal node) {
        //Check that parameter type is valid
        if(isTypeValid(node, node.getType())) {

            //Check to see if parameter is defined in scope
            if (varSymbolTable.peek(node.getName()) == null) {
                varSymbolTable.add(node.getName(), node.getType());
            }
            else {
                errorHandler.register(2, fileName, node.getLineNum(),
                        "Variable '" + node.getName() + "' is already defined in the scope.");
            }
        }
        return null;
    }

    /**
     * Visit a list node of statements
     *
     * @param node the statement list node
     * @return List of ReturnStmt in StmtList
     */
    @Override
    public Object visit(StmtList node) {
        List<ReturnStmt> returnStmtList = new ArrayList<>();
        for (Iterator it = node.iterator(); it.hasNext(); ) {
            returnStmtList.addAll((List<ReturnStmt>) ((Stmt) it.next()).accept(this));
        }
        return returnStmtList;
    }

    /**
     * Add a declared variable to var symbol table
     *
     * @param node the declaration statement node
     * @return empty List of ReturnStmt
     */
    @Override
    public Object visit(DeclStmt node) {
        //Check that variable type is valid
        if(isTypeValid(node, node.getType())) {

            //Check to see if local var defined in the class
            String varType = peekVarInClass(false, varSymbolTable, node.getName());
            if (varType == null){
                if (keywordSet.contains(node.getName())) {
                    errorHandler.register(2, fileName, node.getLineNum(),
                            node.getName() + " is a reserved keyword.");
                }
                else {
                    varType = node.getType();
                    varSymbolTable.add(node.getName(), varType);
                }
            }
            else {
                errorHandler.register(2, fileName, node.getLineNum(), "Variable '" +
                        node.getName() + "' is already defined in the scope.");
            }

            node.getInit().accept(this);

            //Check for type equivalence
            checkTypeCompatibility(node, varType, node.getInit().getExprType());
        }
        return new ArrayList<ReturnStmt>();
    }

    /**
     * Visit an expression statement node
     *
     * @param node the expression statement node
     * @return empty List of ReturnStmt
     */
    @Override
    public Object visit(ExprStmt node) {
        String exprTypr = (String)node.getExpr().accept(this);

        List<String> validExprType = Arrays.asList(
                "AssignExpr", "ArrayAssignExpr", "UnaryIncrExpr", "UnaryDecrExpr",
                "DispatchExpr", "NewExpr", "NewArrayExpr");
        if(!validExprType.contains(exprTypr)){
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Expected: assignments, increment/decrement operations, method calls, " +
                            "or new object constructions. Actual: " + exprTypr);
        }
        return new ArrayList<ReturnStmt>();
    }

    /**
     * Type check components of if statement node
     *
     * @param node the if statement node
     * @return List of ReturnStmt in IfStmt
     */
    @Override
    public Object visit(IfStmt node) {
        List<ReturnStmt> returnStmtList = new ArrayList<>();
        node.getPredExpr().accept(this);
        //Check to see if we're doing if(boolean)
        checkTypeCompatibility(node.getPredExpr(), "boolean",
                node.getPredExpr().getExprType());

        varSymbolTable.enterScope();
        returnStmtList.addAll((List<ReturnStmt>)node.getThenStmt().accept(this));
        varSymbolTable.exitScope();

        if (node.getElseStmt() != null) {
            varSymbolTable.enterScope();
            returnStmtList.addAll((List<ReturnStmt>)node.getElseStmt().accept(this));
            varSymbolTable.exitScope();
        }
        return returnStmtList;
    }

    /**
     * Type check components of while statement node
     *
     * @param node the while statement node
     * @return List of ReturnStmt in WhileStmt
     */
    @Override
    public Object visit(WhileStmt node) {
        List<ReturnStmt> returnStmtList = new ArrayList<>();
        node.getPredExpr().accept(this);
        //Check to see if we're doing while(boolean)
        checkTypeCompatibility(node.getPredExpr(), "boolean",
                node.getPredExpr().getExprType());

        varSymbolTable.enterScope();
        returnStmtList.addAll((List<ReturnStmt>)node.getBodyStmt().accept(this));
        varSymbolTable.exitScope();
        return returnStmtList;
    }

    /**
     * Type check components of for statement node
     *
     * @param node the for statement node
     * @return List of ReturnStmt in ForStmt
     */
    @Override
    public Object visit(ForStmt node) {
        List<ReturnStmt> returnStmtList = new ArrayList<>();
        if (node.getInitExpr() != null) {
            node.getInitExpr().accept(this);
        }
        if (node.getPredExpr() != null) {
            node.getPredExpr().accept(this);
            checkTypeCompatibility(node.getPredExpr(), "boolean",
                    node.getPredExpr().getExprType());
        }
        if (node.getUpdateExpr() != null) {
            node.getUpdateExpr().accept(this);
        }
        varSymbolTable.enterScope();
        returnStmtList.addAll((List<ReturnStmt>)node.getBodyStmt().accept(this));
        varSymbolTable.exitScope();
        return returnStmtList;
    }

    /**
     * Visit a break statement node
     *
     * @param node the break statement node
     * @return empty List of ReturnStmt
     */
    @Override
    public Object visit(BreakStmt node) {
        return new ArrayList<ReturnStmt>();
    }

    /**
     * Keep everything in the block statement node in separate scope
     *
     * @param node the block statement node
     * @return List of ReturnStmt in BlockStmt
     */
    @Override
    public Object visit(BlockStmt node) {
        List<ReturnStmt> returnStmtList = new ArrayList<>();
        varSymbolTable.enterScope();
        returnStmtList.addAll((List<ReturnStmt>)node.getStmtList().accept(this));
        varSymbolTable.exitScope();
        return returnStmtList;
    }

    /**
     * Visit a return statement node
     *
     * @param node the return statement node
     * @return List of current ReturnStmt
     */
    @Override
    public Object visit(ReturnStmt node) {
        List<ReturnStmt> returnStmtList = new ArrayList<ReturnStmt>();
        returnStmtList.add(node);

        if (node.getExpr() != null) {
            node.getExpr().accept(this);
        }
        return returnStmtList;
    }

    /**
     * Checks to see if the dispatch call actually matches the corresponding method call
     *
     * @param method Method that's supposed to be called
     * @param expr DispatchExpr making a method call
     */
    private void checkDispatchMethodCompatibility(Method method, DispatchExpr expr){
        //Check to see if method is actually null
        if(method == null){
            errorHandler.register(2, fileName, expr.getLineNum(),
                    "Cannot find " + expr.getMethodName() + "().");
        }
        else{
            FormalList methodParams = method.getFormalList();
            ExprList dispatchParams = expr.getActualList();
            // see if param count matches
            if(methodParams.getSize() != dispatchParams.getSize()){
                errorHandler.register(2, fileName, expr.getLineNum(),
                        "Expected " + methodParams.getSize() + " parameters. Received: "
                                + dispatchParams.getSize() + " parameters");
            }
            else {
                // see if all param type matches
                for (int i = 0; i < methodParams.getSize(); i++) {
                    checkTypeCompatibility(expr, ((Formal) methodParams.get(i)).getType(),
                            ((Expr) dispatchParams.get(i)).getExprType());
                }
            }
            expr.setExprType(method.getReturnType());
        }
    }

    /**
     * Visits and type checks a dispatch expression node
     *
     * @param node the dispatch expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(DispatchExpr node) {
        node.getActualList().accept(this);
        //simple method call
        if(node.getRefExpr() == null) {
            //method not found
            Method methodCalled = (Method)methodSymbolTable.lookup(node.getMethodName());
            checkDispatchMethodCompatibility(methodCalled, node);
        }
        //Object.method()
        else {
            node.getRefExpr().accept(this);
            //object dispatching is actually a class
            if(isObjectTypeValid(node, node.getRefExpr().getExprType())){
                String refType = node.getRefExpr().getExprType();
                //If the type is an array, we're using the object's symbol tables
                ClassTreeNode dispatchNode = (refType.contains("[]")) ?
                        classMap.get("Object") : classMap.get(refType);
                Method methodCalled = (Method)dispatchNode.getMethodSymbolTable().
                        lookup(node.getMethodName());
                checkDispatchMethodCompatibility(methodCalled, node);
            }
        }
        return "DispatchExpr";
    }

    /**
     * Visits and type checks a new expression node
     *
     * @param node the new expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(NewExpr node) {
        if(isObjectTypeValid(node, node.getType())){
            node.setExprType(node.getType());
        }
        return "NewExpr";
    }

    /**
     * Visits and type checks an new array expression node
     *
     * @param node the new array expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(NewArrayExpr node) {
        node.getSize().accept(this);
        if(isTypeValid(node, node.getType())){
            node.setExprType(node.getType()+"[]");
        }
        
        return "NewArrayExpr";
    }

    /**
     * Visits and type checks an instanceof expression node
     *
     * @param node the instanceof expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(InstanceofExpr node) {
        node.getExpr().accept(this);
        node.setExprType("boolean");
        isObjectTypeValid(node, node.getType());
        isObjectTypeValid(node, node.getExpr().getExprType());
        return "InstanceofExpr";
    }

    /**
     * Visit an cast expression node
     *
     * @param node the cast expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(CastExpr node) {
        node.getExpr().accept(this);

        if(isObjectTypeValid(node, node.getType()) &&
                isObjectTypeValid(node, node.getExpr().getExprType())) {
            node.setExprType(node.getType());

            //Check to see if we're upcasting
            if(isTypeOf(node.getExpr().getExprType(), node.getType(), classMap)){
                node.setUpCast(true);
            }
            //Check to see if we're downcasting
            else if(isTypeOf(node.getType(), node.getExpr().getExprType(), classMap)){
                node.setUpCast(false);
            }
            else{
                errorHandler.register(2, fileName, node.getLineNum(),
                        "Cannot cast " + node.getExpr().getExprType() + " to " +
                                node.getType() + ".");
            }
        }
        return "CastExpr";
    }

    /**
     * Returns the variable type of the variable provided, looking in the
     * variable symbol table corresponding to the provided reference
     *
     * @param node the ASTNode
     * @param refName reference for the variable
     * @param varName variable name
     * @return String type of the variable
     */
    private String getReferencedVarType(ASTNode node, String refName, String varName){
        String varType = null;

        //no reference
        if(refName == null){
            varType = (String)varSymbolTable.lookup(varName);
        }
        else if(refName.equals("this")) {
            varType = (String) varSymbolTable.peek(varName,
                    getSymTableFieldLevel(currClassTreeNode));
        }
        else if(refName.equals("super")){
            varType = (String) currClassTreeNode.getParent().getVarSymbolTable().
                    peek(varName, getSymTableFieldLevel(currClassTreeNode.getParent()));
        }
        //any other references
        else{
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Invalid reference: " + refName);
        }
        return varType;
    }

    /**
     * Visits and type checks an assignment expression node
     *
     * @param node the assignment expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(AssignExpr node) {
        node.getExpr().accept(this);
        String varType = getReferencedVarType(node, node.getRefName(), node.getName());

        //see if the variable has been declared
        if(varType == null){
            errorHandler.register(2, fileName, node.getLineNum(),
                    node.getName() + " has not been declared.");
        }
        else{
            node.setExprType(varType);
            checkTypeCompatibility(node, varType, node.getExpr().getExprType());
        }

        return "AssignExpr";
    }

    /**
     * Visits and type checks checks an array assignment expression node
     *
     * @param node the array assignment expression node
     * @return String of type of Expr
     */
    public Object visit(ArrayAssignExpr node) {
        node.getIndex().accept(this);
        node.getExpr().accept(this);

        String varType = getReferencedVarType(node, node.getRefName(), node.getName());
        checkTypeCompatibility(node, node.getIndex().getExprType(), "int");

        //see if the variable has been declared
        if(varType == null){
            errorHandler.register(2, fileName, node.getLineNum(),
                    node.getName() + " has not been declared.");
        }
        else{
            node.setExprType(varType.replace("[]",""));
            checkTypeCompatibility(node, varType.replace("[]",""),
                    node.getExpr().getExprType());
        }

        return "ArrayAssignExpr";
    }

    /**
     * Visits and type checks operands of a binary comparison Eq/Neq expression node
     *
     * @param node the binary comparison expression node
     * @return String of type of Expr
     */
    private void visitBinaryEqualityExpr(BinaryCompExpr node) {
        Expr leftExpr = node.getLeftExpr();
        Expr rightExpr = node.getRightExpr();

        leftExpr.accept(this);
        rightExpr.accept(this);

        node.setExprType("boolean");
        //if one is not a type of the other, register an error
        if(!(isTypeOf(leftExpr.getExprType(), rightExpr.getExprType(), classMap) ||
                isTypeOf(rightExpr.getExprType(), leftExpr.getExprType(), classMap))){
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Incompatible types: " + leftExpr.getExprType() + ", " +
                            rightExpr.getExprType());
        }
    }

    /**
     * Visits and type checks a binary comparison equals expression node
     *
     * @param node the binary comparison equals expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryCompEqExpr node) {
        visitBinaryEqualityExpr(node);
        return "BinaryCompEqExpr";
    }

    /**
     * Visits and type checks a binary comparison not equals expression node
     *
     * @param node the binary comparison not equals expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryCompNeExpr node) {
        visitBinaryEqualityExpr(node);
        return "BinaryCompNeExpr";
    }

    /**
     * Visits and type checks operands of a binary comparison expression node
     *
     * @param node the binary comparison expression node
     * @return String of type of Expr
     */
    private void visitBinaryCompExpr(BinaryCompExpr node) {
        node.setExprType("boolean");

        node.getLeftExpr().accept(this);
        node.getRightExpr().accept(this);

        String leftOperandType = node.getLeftExpr().getExprType();
        String rightOperandType = node.getRightExpr().getExprType();

        if(!areTypesEqual(leftOperandType, "int") ||
                !areTypesEqual(rightOperandType, "int")) {
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Operands of wrong type. Expected: int, int" +
                            " Actual: " + leftOperandType + ", " + rightOperandType);
        }
    }

    /**
     * Visits and type checks a binary comparison less than expression node
     *
     * @param node the binary comparison less than expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryCompLtExpr node) {
        visitBinaryCompExpr(node);
        return "BinaryCompLtExpr";
    }

    /**
     * Visits and type checks a binary comparison less than or equal to expression node
     *
     * @param node the binary comparison less than or equal to expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryCompLeqExpr node) {
        visitBinaryCompExpr(node);
        return "BinaryCompLeqExpr";
    }

    /**
     * Visits and type checks a binary comparison greater than expression node
     *
     * @param node the binary comparison greater than expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryCompGtExpr node) {
        visitBinaryCompExpr(node);
        return "BinaryCompGtExpr";
    }

    /**
     * Visits and type checks a binary comparison greater than or equal to expression node
     *
     * @param node the binary comparison greater to or equal to expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryCompGeqExpr node) {
        visitBinaryCompExpr(node);
        return "BinaryCompGeqExpr";
    }

    /**
     * Visits and type checks operands of a binary arithmetic expression node
     *
     * @param node the binary arithmetic expression node
     * @return String of type of Expr
     */
    private void visitBinaryArithExpr(BinaryArithExpr node){
        node.setExprType("int");

        node.getLeftExpr().accept(this);
        node.getRightExpr().accept(this);

        String leftOperandType = node.getLeftExpr().getExprType();
        String rightOperandType = node.getRightExpr().getExprType();

        if(!areTypesEqual(leftOperandType, "int") ||
                !areTypesEqual(rightOperandType, "int")) {
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Operands of wrong type. Expected: int, int" +
                            " Actual: " + leftOperandType + ", " + rightOperandType);
        }
    }

    /**
     * Visits and type checks a binary arithmetic plus expression node
     *
     * @param node the binary arithmetic plus expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryArithPlusExpr node) {
        visitBinaryArithExpr(node);
        return "BinaryArithPlusExpr";
    }

    /**
     * Visits and type checks a binary arithmetic minus expression node
     *
     * @param node the binary arithmetic minus expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryArithMinusExpr node) {
        visitBinaryArithExpr(node);
        return "BinaryArithMinusExpr";
    }

    /**
     * Visits and type checks a binary arithmetic times expression node
     *
     * @param node the binary arithmetic times expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryArithTimesExpr node) {
        visitBinaryArithExpr(node);
        return "BinaryArithTimesExpr";
    }

    /**
     * Visits and type checks a binary arithmetic divide expression node
     *
     * @param node the binary arithmetic divide expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryArithDivideExpr node) {
        visitBinaryArithExpr(node);
        return "BinaryArithDivideExpr";
    }

    /**
     * Visits and type checks a binary arithmetic modulus expression node
     *
     * @param node the binary arithmetic modulus expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryArithModulusExpr node) {
        visitBinaryArithExpr(node);
        return "BinaryArithModulusExpr";
    }

    /**
     * Visits and type checks operands of a binary logical expression node
     *
     * @param node the binary logical expression node
     * @return result of the visit
     */
    private void visitBinaryLogicExpr(BinaryLogicExpr node) {
        node.setExprType(node.getOpType());

        node.getLeftExpr().accept(this);
        node.getRightExpr().accept(this);

        String leftOperandType = node.getLeftExpr().getExprType();
        String rightOperandType = node.getRightExpr().getExprType();

        if(!areTypesEqual(leftOperandType, node.getOperandType()) ||
                !areTypesEqual(rightOperandType, node.getOperandType())) {
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Operands of wrong type. Expected: " + node.getOperandType() + ", " +
                            node.getOperandType() + " Actual: " + leftOperandType + ", " +
                            rightOperandType);
        }
    }

    /**
     * Visits and type checks a binary logical AND expression node
     *
     * @param node the binary logical AND expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryLogicAndExpr node) {
        visitBinaryLogicExpr(node);
        return "BinaryLogicAndExpr";
    }

    /**
     * Visits and type checks a binary logical OR expression node
     *
     * @param node the binary logical OR expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryLogicOrExpr node) {
        visitBinaryLogicExpr(node);
        return "BinaryLogicOrExpr";
    }

    /**
     * Visits and type checks a binary bitwise OR expression node
     *
     * @param node the binary bitwise OR expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryLogicBitOrExpr node) {
        visitBinaryLogicExpr(node);
        return "BinaryLogicBitOrExpr";
    }

    /**
     * Visits and type checks a binary bitwise AND expression node
     *
     * @param node the binary bitwise AND expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryLogicBitAndExpr node) {
        visitBinaryLogicExpr(node);
        return "BinaryLogicBitAndExpr";
    }

    /**
     * Visits and type checks a binary bitwise XOR expression node
     *
     * @param node the binary bitwise XOR expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryLogicBitXorExpr node) {
        visitBinaryLogicExpr(node);
        return "BinaryLogicBitXorExpr";
    }

    /**
     * Visits and type checks a binary signed left shift expression node
     *
     * @param node the binary signed left shift expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryLogicLeftShiftExpr node) {
        visitBinaryLogicExpr(node);
        return "BinaryLogicLeftShiftExpr";
    }

    /**
     * Visits and type checks a binary signed right shift expression node
     *
     * @param node the binary signed right shift expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryLogicRightShiftExpr node) {
        visitBinaryLogicExpr(node);
        return "BinaryLogicRightShiftExpr";
    }

    /**
     * Visits and type checks a binary unsigned right shift expression node
     *
     * @param node the binary signed right shift expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(BinaryLogicUnsignedShiftExpr node) {
        visitBinaryLogicExpr(node);
        return "BinaryLogicUnsignedShiftExpr";
    }

    /**
     * Visits and type checks an unary negation expression node
     *
     * @param node the unary negation expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(UnaryNegExpr node) {
        node.setExprType("int");
        node.getExpr().accept(this);
        if(!areTypesEqual(node.getExpr().getExprType(), "int")) {
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Operand must be of type int");
        }
        return "UnaryNegExpr";
    }

    /**
     * Visits and type checks an unary NOT expression node
     *
     * @param node the unary NOT expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(UnaryNotExpr node) {
        node.setExprType("boolean");
        node.getExpr().accept(this);
        if(!areTypesEqual(node.getExpr().getExprType(), "boolean")) {
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Operand must be of type boolean");
        }
        return "UnaryNotExpr";
    }

    /**
     * Type checks a unary expr expecting an int VarExpr/ArrayExpr as its expr
     *
     * @param node the UnaryExpr node
     */
    private void visitUnaryIntExpr(UnaryExpr node) {
        String exprType = (String) node.getExpr().accept(this);
        node.setExprType("int");
        if(!exprType.equals("VarExpr") && !exprType.equals("ArrayExpr")) {
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Expected VarExpr or ArrayExpr. Received: " + exprType);
        }
        else {
            checkTypeCompatibility(node, "int",
                    node.getExpr().getExprType().replace("[]",""));
        }
    }
    /**
     * Type checks a unary increment expression node
     *
     * @param node the unary increment expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(UnaryIncrExpr node) {
        visitUnaryIntExpr(node);
        return "UnaryIncrExpr";
    }

    /**
     * Visit a unary decrement expression node
     *
     * @param node the unary decrement expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(UnaryDecrExpr node) {
        visitUnaryIntExpr(node);
        return "UnaryDecrExpr";
    }


    /**
     * Sets the expression type based on the type of the variable passed in
     * @param node the Expr node
     * @param varName String of variable name
     */
    private void setReferencelessExprType(Expr node, String varName) {
        if(varName.equals("this")){
            node.setExprType(currClassTreeNode.getName());
        }
        else if(varName.equals("super")){
            node.setExprType(currClassTreeNode.getParent().getName());
        }
        else if(varName.equals("null")) {
            node.setExprType("null");
        }
        else if(varSymbolTable.lookup(varName) == null) {
            errorHandler.register(2, fileName, node.getLineNum(),
                    varName + " has not been declared.");
        }
        else{
            node.setExprType(peekVarInClass(true, varSymbolTable, varName));
        }
    }

    /**
     * Checks ref is valid and that the variable referenced by ref has been declared
     *
     * @param node the Expr node
     * @param refExpr VarExpr of reference
     * @param varName String name of variable
     */
    private void checkReferencedVarExpr(Expr node, VarExpr refExpr, String varName) {
        String refType = refExpr.getExprType();

        if(refType == null){
            errorHandler.register(2, fileName, refExpr.getLineNum(),
                    "Invalid reference: " + refExpr.getName());
        }
        else {
            //expr type is null if variable name was not found in the symbol table
            if(node.getExprType() == null) {
                errorHandler.register(2, fileName, node.getLineNum(),
                        varName + " has not been declared.");
            }
        }
    }

    /**
     * Visits and type checks a variable expression node
     *
     * @param node the variable expression node
     * @return String of Expr name
     */
    @Override
    public Object visit(VarExpr node) {
        VarExpr refExpr = (VarExpr) node.getRef();

        //variable with no reference
        if(refExpr == null) {
            setReferencelessExprType(node, node.getName());
        }
        //variable with reference
        else {
            refExpr.accept(this);
            //this.something
            if(refExpr.getName().equals("this")) {
                //look for the variable at the field's scope
                node.setExprType((String) varSymbolTable.peek(node.getName(),
                        getSymTableFieldLevel(currClassTreeNode)));
                checkReferencedVarExpr(node, refExpr, node.getName());
            }
            //super.something
            else if(refExpr.getName().equals("super")) {
                ClassTreeNode parentNode = currClassTreeNode.getParent();
                node.setExprType((String) parentNode.getVarSymbolTable().peek(
                        node.getName(), getSymTableFieldLevel(parentNode)));
                checkReferencedVarExpr(node, refExpr, node.getName());
            }
            //array.length
            else if(refExpr.getExprType() !=
                    null && refExpr.getExprType().contains("[]")) {
                if (!node.getName().equals("length")) {
                    errorHandler.register(2, fileName, node.getLineNum(),
                            "Expect .length when '" + refExpr.getName() + "' is type []");
                }
                else {
                    node.setExprType(refExpr.getExprType().replace("[]",""));
                }
            }
            else {
                errorHandler.register(2, fileName, node.getLineNum(),
                        node.getName() + " not found.");
            }
        }
        return "VarExpr";
    }

    /**
     * Visits and type checks an array expression node
     *
     * @param node the array expression node
     * @return String of type of Expr
     */
    public Object visit(ArrayExpr node) {
        VarExpr refExpr = (VarExpr) node.getRef();
        node.getIndex().accept(this);

        //no reference
        if (refExpr == null) {
            setReferencelessExprType(node, node.getName());
            if(node.getExprType() != null){
                node.setExprType(node.getExprType().replace("[]",""));
            }
        }
        else {
            refExpr.accept(this);
            if (refExpr.getName().equals("this")) {
                //look for the variable at the field's scope
                node.setExprType(((String) varSymbolTable.peek(node.getName(),
                        getSymTableFieldLevel(currClassTreeNode))).replace("[]", ""));
            }
            //super.something
            else if (refExpr.getName().equals("super")) {
                ClassTreeNode parentNode = classMap.get(refExpr.getName()).getParent();
                node.setExprType(((String) parentNode.getVarSymbolTable().peek(
                        node.getName(),
                        getSymTableFieldLevel(parentNode))).replace("[]",""));
            }
            checkReferencedVarExpr(node, (VarExpr)node.getRef(), node.getName());
        }
        return "ArrayExpr";
    }

    /**
     * Visit an int constant expression node
     *
     * @param node the int constant expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(ConstIntExpr node) {
        node.setExprType("int");
        return "ConstIntExpr";
    }

    /**
     * Visit a boolean constant expression node
     *
     * @param node the boolean constant expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(ConstBooleanExpr node) {
        node.setExprType("boolean");
        return "ConstBooleanExpr";
    }

    /**
     * Visit a string constant expression node
     *
     * @param node the string constant expression node
     * @return String of type of Expr
     */
    @Override
    public Object visit(ConstStringExpr node) {
        node.setExprType("String");
        return "ConstStringExpr";
    }
}
