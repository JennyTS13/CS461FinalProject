/*
 * File: InitCodeGenVisitor.java
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

import java.util.List;


/**
 * Visitor class to generate field init code for all classes
 */
public class InitCodeGenVisitor extends Visitor {

    /**
     * MIPS code generator object
     */
    private MipsCodeGenerator codeGenerator;

    /**
     * Assembly support object (using Mips assembly support)
     */
    private MipsSupport assemblySupport;

    /**
     * ClassTreeNode of the class
     */
    private ClassTreeNode currClassNode;

    /**
     * A list of fields in the class (includes inherited fields)
     * (list of className.fieldName)
     */
    private List<String> fieldNameList;

    /**
     * Symbol table for variables of provided class
     * Field name to Location
     */
    private SymbolTable varSymbolTable;

    /**
     * A list of all String constants in the program
     */
    private List<String> stringConstList;


    /**
     * Generates code for initializing fields
     *
     * @param codeGen MipsCodeGenerator
     * @param support Assembly support object
     * @param node ClassTreeNode of class whose fields are being initialized
     */
    public void genFieldInit(MipsCodeGenerator codeGen, MipsSupport support,
                             ClassTreeNode node, List<String> stringConstList) {
        codeGenerator = codeGen;
        assemblySupport = support;
        this.stringConstList = stringConstList;

        currClassNode = node;
        varSymbolTable = node.getVarSymbolTable();
        fieldNameList = new FieldVisitor().getFieldList(node);

        node.getASTNode().accept(this);
    }

    /**
     * Generates code for field initialization
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Field node) {
        //initialize the field an init Expr exists
        if(node.getInit() != null) {
            Location fieldLocation = (Location) varSymbolTable.peek(node.getName());
            assemblySupport.genComment("initialing field: " + node.getName() +
                    " found at: " + fieldLocation.toString());

            //generate code to evaluate the init expression
            assemblySupport.genComment("evaluate field init value");
            node.getInit().accept(new CodeGenVisitor(codeGenerator, assemblySupport,
                    currClassNode));

            assemblySupport.genComment("save init value in $v0 to memory");
            assemblySupport.genStoreWord("$v0", fieldLocation.getOffset(),
                    fieldLocation.getBaseReg());
        }
        return null;
    }

    /**
     * Does not traverse further down the AST
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Method node) {
        return null;
    }

}
