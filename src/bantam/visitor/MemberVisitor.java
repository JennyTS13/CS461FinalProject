/*
 * File: MemberVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 3
 * Date: March 11, 2017
 */

package bantam.visitor;

import bantam.ast.Field;
import bantam.ast.Formal;
import bantam.ast.FormalList;
import bantam.ast.Method;
import bantam.util.ClassTreeNode;
import bantam.util.ErrorHandler;
import bantam.util.SymbolTable;
import java_cup.runtime.Symbol;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;

/**
 * Visitor class to traverse the class ast for fields and methods in a class
 * and adds information about them to the corresponding symbol table
 */
public class MemberVisitor extends Visitor {

    /** Maps class names to ClassTreeNode objects describing the class */
    private Hashtable<String,ClassTreeNode> classMap;

    /**
     * Set of keywords not available for names
     */
    private Set<String> keywordSet = new HashSet<>();

    /**
     * Symbol table for variables of provided class
     * Field name to variable type
     */
    private SymbolTable varSymbolTable;

    /**
     * Symbol table for methods of provided class
     * Method name to return type
     */
    private SymbolTable methodSym;

    /**
     * Error handler used for duplicate fields
     */
    private ErrorHandler errorHandler;

    /**
     * Filename of the file that the field is found in
     */
    private String fileName;

    /**
     * Constructor
     */
    public MemberVisitor(){
        keywordSet.addAll(Arrays.asList("null", "void", "super",
                "this", "boolean", "int"));
    }

    /**
     * Adds the class's fields and methods to its corresponding symbol table
     *
     * @param node ClassTreeNode of the class
     * @param errorHandler ErrorHandler to log the errors found during traversal
     */
    public void populateSymbolTables(ClassTreeNode node, ErrorHandler errorHandler) {
        this.classMap = node.getClassMap();
        this.errorHandler = errorHandler;
        fileName = node.getASTNode().getFilename();

        //Enter the first scope for fields and methods
        varSymbolTable = node.getVarSymbolTable();
        methodSym = node.getMethodSymbolTable();
        varSymbolTable.enterScope();
        methodSym.enterScope();

        node.getASTNode().accept(this);
    }

    /**
     * Traverses down the field node
     * Adds the field's name and type information to the field symbol table
     * if it does not already exist.
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Field node) {
        //Check to see if field name is taken
        if (varSymbolTable.peek(node.getName()) == null ) {
            //Check to see if the field name is a key word
            if(keywordSet.contains(node.getName())) {
                errorHandler.register(2, fileName, node.getLineNum(),
                        node.getName() + " is a reserved keyword.");
            }
            else {
                if(node.getType().equals("void")){
                    varSymbolTable.add(node.getName(), "null");
                }
                else {
                    varSymbolTable.add(node.getName(), node.getType());
                }
            }
        }
        else {
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Field: " + node.getName() + " has been declared.");
        }
        return null;
    }

    /**
     * Traverses down the method node
     * Adds the method's name and return type information to the method symbol table
     * if it does not already exist.
     *
     * @param node the method node
     * @return result of the visit
     */
    @Override
    public Object visit(Method node) {
        if (methodSym.peek(node.getName()) == null) {
            Method parentMethod;
            //if there's no parent symbol table, parent method does not exist, or
            //signature matches for overriding, try adding the method to the table
            if(methodSym.getCurrScopeLevel() == 1 || (parentMethod =
                    (Method)methodSym.lookup(node.getName())) == null ||
                    matchingSignature(node, parentMethod)) {
                if (keywordSet.contains(node.getName())) {
                    errorHandler.register(2, fileName, node.getLineNum(),
                            node.getName() + " is a reserved keyword.");
                } else {
                    methodSym.add(node.getName(), node);
                }
            }
            else{
                errorHandler.register(2, fileName, node.getLineNum(),
                        "Expected: " + getMethodSignature(parentMethod) +
                                " Actual: " + getMethodSignature(node));
            }
        }
        else {
            errorHandler.register(2, fileName, node.getLineNum(),
                    "Method " + node.getName() + " has been declared.");
        }
        return null;
    }

    /**
     * Returns the signature of the method node
     * @param node the Method node
     * @return String signature of the method node
     */
    private String getMethodSignature(Method node){
        String methodSignature = node.getReturnType() + " " + node.getName() + "(";
        FormalList methodParam = node.getFormalList();

        //append params to signature
        for(int i = 0; i < methodParam.getSize(); i++){
            methodSignature += ((Formal)methodParam.get(i)).getType();
            methodSignature += ",";
        }

        //remove the extra comma at the param list
        if(methodParam.getSize() > 0){
            methodSignature = methodSignature.substring(0, methodSignature.length() - 1);
        }

        return methodSignature + ")";
    }

    /**
     * Checks if the signature of the child method conforms to the signature of the parent
     *
     * @param childMethod the child Method
     * @param parentMethod the parent Method
     * @return boolean indicating if two signatures are compatible
     */
    private boolean matchingSignature(Method childMethod, Method parentMethod){
        boolean signatureMatches = true;
        FormalList childParams = childMethod.getFormalList();
        FormalList parentParams = parentMethod.getFormalList();

        //check to see if return type matches
        signatureMatches = signatureMatches && TypeCheckVisitor.isTypeOf(
                childMethod.getReturnType(), parentMethod.getReturnType(), classMap);
        //check to see if the param size matches
        signatureMatches = signatureMatches &&
                (childParams.getSize() == parentParams.getSize());
        //check each param type
        if(signatureMatches){
            for(int i = 0; i < parentParams.getSize(); i++){
                signatureMatches = signatureMatches && TypeCheckVisitor.isTypeOf(
                        ((Formal)childParams.get(i)).getType(),
                        ((Formal)parentParams.get(i)).getType(), classMap);
            }
        }
        return signatureMatches;
    }
}
