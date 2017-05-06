/*
 * File: BreakCheckVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 3
 * Date: March 11, 2017
 */

package bantam.visitor;

import bantam.ast.*;
import bantam.util.ClassTreeNode;
import bantam.util.ErrorHandler;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Visitor class to traverse the class ast to check that break stmt are in loopsa
 */
public class BreakCheckVisitor extends Visitor{

    /**
     * Error handler used for duplicate fields
     */
    private ErrorHandler errorHandler;

    /**
     * Filename of the file that the field is found in
     */
    private String fileName;

    /**
     * Traverse the class, checking that all BreakStmts are in loops
     *
     * @param node ClassTreeNode of the class
     * @param errorHandler ErrorHandler to log the errors found during traversal
     */
    public void checkBreakValidity(ClassTreeNode node, ErrorHandler errorHandler){
        this.errorHandler = errorHandler;
        fileName = node.getASTNode().getFilename();

        node.getASTNode().accept(this);
    }

    /**
     * Don't traverse down the field node
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Field node) {
        return null;
    }

    /**
     * Visit a method node, making sure that all BreakStmts are in loops
     *
     * @param node the method node
     * @return result of the visit
     */
    @Override
    public Object visit(Method node) {
        List<BreakStmt> breakStmtList = (List<BreakStmt>)node.getStmtList().accept(this);
        breakStmtList.forEach(breakStmt ->
                errorHandler.register(2, fileName, breakStmt.getLineNum(),
                        "Break statement must be in loops."));
        return null;
    }

    /**
     * Visit a list node of statements
     *
     * @param node the statement list node
     * @return List of BreakStmt in StmtList that are not in loops
     */
    @Override
    public Object visit(StmtList node) {
        List<BreakStmt> breakStmtList = new ArrayList<>();
        for (Iterator it = node.iterator(); it.hasNext(); ) {
            breakStmtList.addAll((List<BreakStmt>) ((Stmt) it.next()).accept(this));
        }
        return breakStmtList;
    }

    /**
     * Visit a declaration statement node
     *
     * @param node the declaration statement node
     * @return empty List<BreakStmt>
     */
    @Override
    public Object visit(DeclStmt node) {
        return new ArrayList<BreakStmt>();
    }

    /**
     * Visit an expression statement node
     *
     * @param node the expression statement node
     * @return empty List<BreakStmt>
     */
    @Override
    public Object visit(ExprStmt node) {
        return new ArrayList<BreakStmt>();
    }

    /**
     * Visit an if statement node
     *
     * @param node the if statement node
     * @return List of BreakStmt in IfStmt
     */
    @Override
    public Object visit(IfStmt node) {
        List<BreakStmt> breakStmtList = (List<BreakStmt>) node.getThenStmt().accept(this);

        if (node.getElseStmt() != null) {
            breakStmtList.addAll((List<BreakStmt>) node.getElseStmt().accept(this));
        }
        return breakStmtList;
    }

    /**
     * Visit a while statement node
     *
     * @param node the while statement node
     * @return empty List<BreakStmt>
     */
    @Override
    public Object visit(WhileStmt node) {
        //returning empty list since it doesnt matter if breaks are in a while loop
        return new ArrayList<BreakStmt>();
    }

    /**
     * Visit a for statement node
     *
     * @param node the for statement node
     * @return empty List<BreakStmt>
     */
    @Override
    public Object visit(ForStmt node) {
        //returning empty list since it doesnt matter if breaks are in a for loop
        return new ArrayList<BreakStmt>();
    }

    /**
     * Visit a break statement node
     *
     * @param node the break statement node
     * @return List containing the current BreakStmt
     */
    @Override
    public Object visit(BreakStmt node) {
        List<BreakStmt> breakStmtList = new ArrayList<>();
        breakStmtList.add(node);
        return breakStmtList;
    }

    /**
     * Visit a block statement node
     *
     * @param node the block statement node
     * @return List of BreakStmt in the block
     */
    @Override
    public Object visit(BlockStmt node) {
        return node.getStmtList().accept(this);
    }

    /**
     * Visit a return statement node
     *
     * @param node the return statement node
     * @return empty List<BreakStmt>
     */
    @Override
    public Object visit(ReturnStmt node) {
        return new ArrayList<BreakStmt>();
    }
}
