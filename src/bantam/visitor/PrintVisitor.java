/*
 * File: PrintVisitorModified.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 5
 * Date: April 28, 2017
 */

/* Bantam Java Compiler and Language Toolset.

   Copyright (C) 2009 by Marc Corliss (corliss@hws.edu) and 
                         David Furcy (furcyd@uwosh.edu) and
                         E Christopher Lewis (lewis@vmware.com).
   ALL RIGHTS RESERVED.

   The Bantam Java toolset is distributed under the following 
   conditions:

     You may make copies of the toolset for your own use and 
     modify those copies.

     All copies of the toolset must retain the author names and 
     copyright notice.

     You may not sell the toolset or distribute it in 
     conjunction with a commerical product or service without 
     the expressed written consent of the authors.

   THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS 
   OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE 
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A 
   PARTICULAR PURPOSE. 
*/

package bantam.visitor;

import bantam.ast.*;

import java.util.Iterator;
import java.util.List;

/**
 * Visitor class for printing the AST
 */
public class PrintVisitor extends Visitor {

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(Program node) {
        List<Other> commentAndSpacing = node.getCommentAndSpacingList();
        node.getClassList().accept(this);
        commentAndSpacing.get(0).accept(this);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(Other node) {
        if(node.isExprWrapper() && node.getContents().equals(")")){
            if(node.getCommentAndSpacingList() != null) {
                node.getCommentAndSpacingList().forEach(otherNode ->
                        System.out.print(otherNode.getContents()));
            }
            System.out.print(node.getContents());
        }
        else {
            System.out.print(node.getContents());
            if (node.getCommentAndSpacingList() != null) {
                node.getCommentAndSpacingList().forEach(otherNode ->
                        System.out.print(otherNode.getContents()));
            }
        }

        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ClassList node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        int i = 0;
        for (ASTNode aNode : node) {
            commentAndSpacingList.get(i).accept(this);
            aNode.accept(this);
            i++;
        }
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(Class_ node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        System.out.print("class");
        commentAndSpacingList.get(0).accept(this);
        System.out.print(node.getName());
        commentAndSpacingList.get(1).accept(this);

        //we're not extending anything
        if (node.getParent() == "Object") {
            System.out.print("{");
            node.getMemberList().accept(this);
        }
        else {
            System.out.print("extends");
            commentAndSpacingList.get(2).accept(this);
            System.out.print(node.getParent());
            commentAndSpacingList.get(3).accept(this);
            System.out.print("{");
            node.getMemberList().accept(this);
        }

        System.out.print("}");
        return null;
    }

    /**
     * Visit a list node of members
     *
     * @param node the member list node
     * @return result of the visit
     */
    @Override
    public Object visit(MemberList node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        int i = 0;
        commentAndSpacingList.get(i++).accept(this);
        for (ASTNode child : node) {
            child.accept(this);
            commentAndSpacingList.get(i++).accept(this);
        }

        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(Field node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        System.out.print(node.getType());
        commentAndSpacingList.get(0).accept(this);
        System.out.print(node.getName());
        commentAndSpacingList.get(1).accept(this);

        if (node.getInit() != null) {
            System.out.print("=");
            commentAndSpacingList.get(2).accept(this);
            node.getInit().accept(this);
            commentAndSpacingList.get(3).accept(this);
        }

        System.out.print(";");
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(Method node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        System.out.print(node.getReturnType());
        commentAndSpacingList.get(0).accept(this);
        System.out.print(node.getName());
        commentAndSpacingList.get(1).accept(this);
        System.out.print("(");
        node.getFormalList().accept(this);
        System.out.print(")");
        commentAndSpacingList.get(2).accept(this);
        System.out.print("{");
        node.getStmtList().accept(this);
        System.out.print("}");
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(FormalList node) {
        if(node.getCommentAndSpacingList() != null){
            node.getCommentAndSpacingList().get(0).accept(this);
        }
        Iterator iter = node.iterator();
        for (int i = 0; iter.hasNext(); i++) {
            ((Formal) iter.next()).accept(this);
            if (i < node.getSize() - 1) {
                System.out.print(",");
            }
        }
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(Formal node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        commentAndSpacingList.get(0).accept(this);
        System.out.print(node.getType());
        commentAndSpacingList.get(1).accept(this);
        System.out.print(node.getName());
        commentAndSpacingList.get(2).accept(this);
        return null;
    }

    /**
     * Visit a list node of statements
     *
     * @param node the statement list node
     * @return result of the visit
     */
    @Override
    public Object visit(StmtList node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        int i = 0;
        commentAndSpacingList.get(i++).accept(this);
        for (Iterator it = node.iterator(); it.hasNext(); i++) {
            ((Stmt) it.next()).accept(this);
            commentAndSpacingList.get(i).accept(this);
        }
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(DeclStmt node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        System.out.print(node.getType());
        commentAndSpacingList.get(0).accept(this);
        System.out.print(node.getName());
        commentAndSpacingList.get(1).accept(this);
        System.out.print("=");
        commentAndSpacingList.get(2).accept(this);
        node.getInit().accept(this);
        commentAndSpacingList.get(3).accept(this);
        System.out.print(";");
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ExprStmt node) {
        node.getExpr().accept(this);
        node.getCommentAndSpacingList().get(0).accept(this);
        System.out.print(";");
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(IfStmt node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        System.out.print("if");
        commentAndSpacingList.get(0).accept(this);
        System.out.print("(");
        node.getPredExpr().accept(this);
        System.out.print(")");
        commentAndSpacingList.get(1).accept(this);
        node.getThenStmt().accept(this);
        commentAndSpacingList.get(2).accept(this);

        if (node.getElseStmt() != null) {
            System.out.print("else");
            commentAndSpacingList.get(3).accept(this);
            node.getElseStmt().accept(this);
            commentAndSpacingList.get(4).accept(this);
        }
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(WhileStmt node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        System.out.print("while");
        commentAndSpacingList.get(0).accept(this);

        System.out.print("(");
        commentAndSpacingList.get(1).accept(this);
        node.getPredExpr().accept(this);
        commentAndSpacingList.get(2).accept(this);
        System.out.print(")");

        commentAndSpacingList.get(3).accept(this);
        node.getBodyStmt().accept(this);
        commentAndSpacingList.get(4).accept(this);
        for( ; ; )
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ForStmt node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        System.out.print("for");
        commentAndSpacingList.get(0).accept(this);
        System.out.print("(");
        if (node.getInitExpr() != null) {
            node.getInitExpr().accept(this);
        }
        System.out.print(";");
        if (node.getPredExpr() != null) {
            commentAndSpacingList.get(1).accept(this);
            node.getPredExpr().accept(this);
        }
        System.out.print(";");
        if (node.getUpdateExpr() != null) {
            commentAndSpacingList.get(2).accept(this);
            node.getUpdateExpr().accept(this);
        }
        System.out.print(")");
        commentAndSpacingList.get(3).accept(this);
        node.getBodyStmt().accept(this);
        commentAndSpacingList.get(4).accept(this);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BreakStmt node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        System.out.print("break");
        commentAndSpacingList.get(0).accept(this);
        System.out.print(";");
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BlockStmt node) {
        System.out.print("{");
        node.getStmtList().accept(this);
        System.out.print("}");
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ReturnStmt node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        System.out.print("return");
        commentAndSpacingList.get(0).accept(this);
        if (node.getExpr() != null) {
            node.getExpr().accept(this);
            commentAndSpacingList.get(1).accept(this);
        }
        System.out.print(";");
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ExprList node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        Iterator iter = node.iterator();
        for (int i = 0; iter.hasNext(); i++) {
            commentAndSpacingList.get((i*2)).accept(this);
            ((ASTNode) iter.next()).accept(this);
            commentAndSpacingList.get((i*2)+1).accept(this);
            if (i < node.getSize() - 1) {
                System.out.print(",");
            }
        }
        return null;
    }

    /**
     * Print contents of DispatchExpr (doesn't include wrapper)
     *
     * @param node DispatchExpr node
     */
    private void printDispatchExpr(DispatchExpr node){
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        //if the first Other is a wrapper, skip it
        int i = (commentAndSpacingList.get(0).isExprWrapper())? 1 : 0;

        if(node.getRefExpr() != null) {
            node.getRefExpr().accept(this);
            commentAndSpacingList.get(i++).accept(this);
            System.out.print(".");
            commentAndSpacingList.get(i++).accept(this);
        }

        System.out.print(node.getMethodName());
        commentAndSpacingList.get(i++).accept(this);
        System.out.print("(");
        node.getActualList().accept(this);
        System.out.print(")");
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(DispatchExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        //generate beginning of wrapper
        if(commentAndSpacingList.get(0).isExprWrapper()){
            node.getCommentAndSpacingList().get(0).accept(this);
            printDispatchExpr(node);
            node.getCommentAndSpacingList().get(commentAndSpacingList.size()-1).accept(this);
        }
        else{
            printDispatchExpr(node);
        }

        return null;
    }

    /**
     * Print contents of NewExpr (doesn't include wrapper)
     *
     * @param node NewExpr node
     */
    private void printNewExpr(NewExpr node){
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        //if the first Other is a wrapper, skip it
        int i = (commentAndSpacingList.get(0).isExprWrapper())? 1 : 0;

        System.out.print("new");
        commentAndSpacingList.get(i++).accept(this);
        System.out.print(node.getType());
        commentAndSpacingList.get(i++).accept(this);
        System.out.print("(");
        commentAndSpacingList.get(i++).accept(this);
        System.out.print(")");
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(NewExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        //generate beginning of wrapper
        if(commentAndSpacingList.get(0).isExprWrapper()){
            node.getCommentAndSpacingList().get(0).accept(this);
            printNewExpr(node);
            node.getCommentAndSpacingList().get(commentAndSpacingList.size()-1).accept(this);
        }
        else{
            printNewExpr(node);
        }
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(NewArrayExpr node) {
        System.out.print("(");
        System.out.print("new " + node.getType() + "[");
        node.getSize().accept(this);
        System.out.print("])");
        return null;
    }

    /**
     * Print contents of InstanceofExpr (doesn't include wrapper)
     *
     * @param node InstanceofExpr node
     */
    private void printInstanceofExpr(InstanceofExpr node){
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        //if the first Other is a wrapper, skip it
        int i = (commentAndSpacingList.get(0).isExprWrapper())? 1 : 0;

        node.getExpr().accept(this);
        commentAndSpacingList.get(i++).accept(this);
        System.out.print("instanceof");
        commentAndSpacingList.get(i++).accept(this);
        System.out.print(node.getType());
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(InstanceofExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        //generate beginning of wrapper
        if(commentAndSpacingList.get(0).isExprWrapper()){
            node.getCommentAndSpacingList().get(0).accept(this);
            printInstanceofExpr(node);
            node.getCommentAndSpacingList().get(commentAndSpacingList.size()-1).accept(this);
        }
        else{
            printInstanceofExpr(node);
        }

        return null;
    }

    /**
     * Print contents of CastExpr (doesn't include wrapper)
     *
     * @param node CastExpr node
     */
    private void printCastExpr(CastExpr node){
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        //if the first Other is a wrapper, skip it
        int i = (commentAndSpacingList.get(0).isExprWrapper())? 1 : 0;

        System.out.print("(");
        commentAndSpacingList.get(i++).accept(this);
        System.out.print(node.getType());
        commentAndSpacingList.get(i++).accept(this);
        System.out.print(")");
        commentAndSpacingList.get(i++).accept(this);
        node.getExpr().accept(this);
        commentAndSpacingList.get(i++).accept(this);
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(CastExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        //generate beginning of wrapper
        if(commentAndSpacingList.get(0).isExprWrapper()){
            node.getCommentAndSpacingList().get(0).accept(this);
            printCastExpr(node);
            node.getCommentAndSpacingList().get(commentAndSpacingList.size()-1).accept(this);
        }
        else{
            printCastExpr(node);
        }

        return null;
    }

    /**
     * Print contents of AssignExpr (doesn't include wrapper)
     *
     * @param node AssignExpr node
     */
    private void printAssignExpr(AssignExpr node){
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        //if the first Other is a wrapper, skip it
        int i = (commentAndSpacingList.get(0).isExprWrapper())? 1 : 0;

        if (node.getRefName() != null) {
            System.out.print(node.getRefName());
            commentAndSpacingList.get(i++).accept(this);
            System.out.print(".");
            commentAndSpacingList.get(i++).accept(this);
        }
        System.out.print(node.getName());
        commentAndSpacingList.get(i++).accept(this);
        System.out.print("=");
        commentAndSpacingList.get(i++).accept(this);
        node.getExpr().accept(this);
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(AssignExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        //generate beginning of wrapper
        if(commentAndSpacingList.get(0).isExprWrapper()){
            node.getCommentAndSpacingList().get(0).accept(this);
            printAssignExpr(node);
            node.getCommentAndSpacingList().get(commentAndSpacingList.size()-1).accept(this);
        }
        else{
            printAssignExpr(node);
        }

        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ArrayAssignExpr node) {
        System.out.print("(");
        if (node.getRefName() != null) {
            System.out.print(node.getRefName() + ".");
        }
        System.out.print(node.getName() + "[");
        node.getIndex().accept(this);
        System.out.print("] = ");
        node.getExpr().accept(this);
        System.out.print(")");
        return null;
    }

    /**
     * Print a BinaryExpr (includes wrapper)
     *
     * @param node BinaryExpr node
     */
    public Object printBinaryExpr(BinaryExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        //generate beginning of wrapper
        if(commentAndSpacingList.get(0).isExprWrapper()){
            node.getCommentAndSpacingList().get(0).accept(this);
            printBinaryExprMeta(node);
            node.getCommentAndSpacingList().get(commentAndSpacingList.size()-1).accept(this);
        }
        else{
            printBinaryExprMeta(node);
        }

        return null;
    }

    /**
     * Print contents of BinaryExpr (doesn't include wrapper)
     *
     * @param node BinaryExpr node
     */
    public void printBinaryExprMeta(BinaryExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        //if the first Other is a wrapper, skip it
        int i = (commentAndSpacingList.get(0).isExprWrapper())? 1 : 0;

        node.getLeftExpr().accept(this);
        node.getCommentAndSpacingList().get(i++).accept(this);
        System.out.print(node.getOpName());
        node.getCommentAndSpacingList().get(i++).accept(this);
        node.getRightExpr().accept(this);
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryCompEqExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryCompNeExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryCompLtExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryCompLeqExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryCompGtExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryCompGeqExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryArithPlusExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryArithMinusExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryArithTimesExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryArithDivideExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryArithModulusExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryLogicAndExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryLogicOrExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryLogicBitOrExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryLogicBitAndExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryLogicBitXorExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryLogicLeftShiftExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryLogicRightShiftExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(BinaryLogicUnsignedShiftExpr node) {
        printBinaryExpr(node);
        return null;
    }

    /**
     * Print a UnaryExpr (includes wrapper)
     *
     * @param node UnaryExpr node
     */
    public Object printUnaryExpr(UnaryExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        //generate beginning of wrapper
        if(commentAndSpacingList.get(0).isExprWrapper()){
            node.getCommentAndSpacingList().get(0).accept(this);
            printUnaryExprMeta(node);
            node.getCommentAndSpacingList().get(commentAndSpacingList.size()-1).accept(this);
        }
        else{
            printUnaryExprMeta(node);
        }

        return null;
    }

    /**
     * Print contents of UnaryExpr (doesn't include wrapper)
     *
     * @param node UnaryExpr node
     */
    public void printUnaryExprMeta(UnaryExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        //if the first Other is a wrapper, skip it
        int i = (commentAndSpacingList.get(0).isExprWrapper())? 1 : 0;

        if (!node.isPostfix()) {
            System.out.print(node.getOpName());
            node.getCommentAndSpacingList().get(i).accept(this);
        }
        node.getExpr().accept(this);
        if (node.isPostfix()) {
            node.getCommentAndSpacingList().get(i).accept(this);
            System.out.print(node.getOpName());
        }
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(UnaryNegExpr node) {
        printUnaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(UnaryNotExpr node) {
        printUnaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(UnaryIncrExpr node) {
        printUnaryExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(UnaryDecrExpr node) {
        printUnaryExpr(node);
        return null;
    }

    /**
     * Print contents of VarExpr (doesn't include wrapper)
     *
     * @param node VarExpr node
     */
    private void printVarExpr(VarExpr node){
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();
        //if the first Other is a wrapper, skip it
        int i = (commentAndSpacingList.get(0).isExprWrapper())? 1 : 0;

        if (node.getRef() != null) {
            node.getRef().accept(this);
            commentAndSpacingList.get(i++).accept(this);
            System.out.print(".");
            commentAndSpacingList.get(i++).accept(this);
        }
        System.out.print(node.getName());
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(VarExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        //generate beginning of wrapper
        if(commentAndSpacingList.get(0).isExprWrapper()){
            node.getCommentAndSpacingList().get(0).accept(this);
            printVarExpr(node);
            node.getCommentAndSpacingList().get(commentAndSpacingList.size()-1).accept(this);
        }
        else{
            printVarExpr(node);
        }

        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ArrayExpr node) {
        System.out.print("(");
        if (node.getRef() != null) {
            node.getRef().accept(this);
            System.out.print(".");
        }
        System.out.print(node.getName() + "[");
        node.getIndex().accept(this);
        System.out.print("])");
        return null;
    }

    /**
     * Print a ConstExpr (includes wrapper)
     *
     * @param node ConstExpr node
     */
    public Object printConstExpr(ConstExpr node) {
        List<Other> commentAndSpacingList = node.getCommentAndSpacingList();

        //generate beginning of wrapper
        if(commentAndSpacingList != null && commentAndSpacingList.get(0).isExprWrapper()){
            node.getCommentAndSpacingList().get(0).accept(this);
            System.out.print(node.getConstant());
            node.getCommentAndSpacingList().get(commentAndSpacingList.size()-1).accept(this);
        }
        else{
            System.out.print(node.getConstant());
        }

        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ConstIntExpr node) {
        printConstExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ConstBooleanExpr node) {
        printConstExpr(node);
        return null;
    }

    /**
     * Print AST node
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(ConstStringExpr node) {
        printConstExpr(node);
        return null;
    }
}
