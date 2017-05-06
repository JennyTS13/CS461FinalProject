/*
 * File: MemberVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 4B
 * Date: April 15, 2017
 */

package bantam.codegenmips;

import bantam.ast.Field;
import bantam.ast.Method;
import bantam.util.ClassTreeNode;
import bantam.util.Location;
import bantam.util.SymbolTable;
import bantam.visitor.Visitor;

import java.util.*;

/**
 * Visitor class to traverse the class ast for fields and methods in a class
 * and adds information about them to the corresponding symbol table
 */
public class MemberVisitor extends Visitor {

    /**
     * ClassTreeNode of the class
     */
    private ClassTreeNode currClassNode;

    /**
     * Symbol table for variables of provided class
     * Field name to Location
     */
    private SymbolTable varSymbolTable;

    /**
     * Symbol table for methods of provided class
     * Method name to Location
     */
    private SymbolTable methodSymbolTable;

    /**
     * List of method names in the class (includes inherited methods)
     */
    private List<String> methodNameList;

    /**
     * List of field names in the class (includes inherited fields)
     */
    private List<String> fieldNameList;

    /**
     * Adds the class's fields and methods to its corresponding symbol table
     *
     * @param node ClassTreeNode of the class
     */
    public void populateSymbolTables(ClassTreeNode node) {
        currClassNode = node;
        methodNameList = new ArrayList<>();
        fieldNameList = new FieldVisitor().getFieldList(node);

        //Enter the first scope for fields and methods
        varSymbolTable = node.getVarSymbolTable();
        methodSymbolTable = node.getMethodSymbolTable();
        varSymbolTable.enterScope();
        methodSymbolTable.enterScope();

        //Traversing to maintain LinkedHashMap's order
        (new MethodVisitor().getMethodMapping(node)).forEach((methodName, pair) ->
                methodNameList.add(methodName));

        node.getASTNode().accept(this);
    }

    /**
     * Traverses down the field node
     * Adds the field's name and its location to the field symbol table
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Field node) {
        String fieldName = currClassNode.getName() + "." + node.getName();

        //add the field to the symbol table
        //adding 12 because first 3 slots are for obj idx, size and vft
        varSymbolTable.add(node.getName(),
                new Location("$a0", (4 * fieldNameList.indexOf(fieldName)) + 12));

        return null;
    }

    /**
     * Traverses down the method node
     * Adds the method's name and its location to the method symbol table
     *
     * @param node the method node
     * @return result of the visit
     */
    @Override
    public Object visit(Method node) {
        String methodName = currClassNode.getName() + "." + node.getName();

        //add the field to the symbol table
        methodSymbolTable.add(node.getName(),
                new Location("$t0", 4 * methodNameList.indexOf(node.getName())));

        return null;
    }

}
