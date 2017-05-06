/*
 * File: PrettyPrintVisitor.java
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
public class PrettyPrintVisitor extends Visitor {
    /**
     * Current indentation
     */
    private int indent;

    /**
     * Indentation size
     */
    private int indentSize;

    /**
     * PrintVisitor constructor
     *
     * @param indent     starting indentation
     * @param indentSize indentation size
     */
    public PrettyPrintVisitor(int indent, int indentSize) {
        this.indent = indent;
        this.indentSize = indentSize;
    }

    /**
     * Print indentation
     */
    private void indent() {
        for (int i = 0; i < indent; i++) System.out.print(" ");
    }

    /**
     * Print AST node if it's a wrapper
     *
     * @param node AST node
     * @return null (returns value to satisfy compiler)
     */
    @Override
    public Object visit(Other node) {
        if(node.isExprWrapper()){
            if(node.getContents().equals("(")){
                System.out.print(node.getContents());
                if(node.getCommentAndSpacingList() != null) {
                    node.getCommentAndSpacingList().forEach(otherNode ->
                            otherNode.accept(this));
                }
            }
            else {
                if(node.getCommentAndSpacingList() != null) {
                    node.getCommentAndSpacingList().forEach(otherNode ->
                            otherNode.accept(this));
                }
                System.out.print(node.getContents());
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
    public Object visit(Class_ node) {
        System.out.println("// Source file: " + node.getFilename());
        if (node.getParent() != "Object") {
            System.out.println("class " + node.getName() + " extends " +
                    node.getParent() + " {");
        }
        else {
            System.out.println("class " + node.getName() + " {");
        }

        indent += indentSize;
        node.getMemberList().accept(this);
        indent -= indentSize;
        System.out.println("}");
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
        indent();
        if (node.getInit() == null) {
            System.out.println(node.getType() + " " + node.getName() + ";");
        }
        else {
            System.out.print(node.getType() + " " + node.getName() + " = ");
            node.getInit().accept(this);
            System.out.println(";");
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
    public Object visit(Method node) {
        indent();
        System.out.print(node.getReturnType() + " " + node.getName() + "(");
        node.getFormalList().accept(this);
        System.out.println(") {");
        indent += indentSize;
        node.getStmtList().accept(this);
        indent -= indentSize;
        indent();
        System.out.println("}");
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
        Iterator iter = node.iterator();
        for (int i = 0; iter.hasNext(); i++) {
            ((Formal) iter.next()).accept(this);
            if (i < node.getSize() - 1) {
                System.out.print(", ");
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
        System.out.print(node.getType() + " " + node.getName());
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
        indent();
        // note: init can't be null as it can with fields
        System.out.print(node.getType() + " " + node.getName() + " = ");
        node.getInit().accept(this);
        System.out.println(";");
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
        indent();
        node.getExpr().accept(this);
        System.out.println(";");
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
        indent();
        System.out.print("if (");
        node.getPredExpr().accept(this);
        System.out.print(") ");
        node.getThenStmt().accept(this);
        if (node.getElseStmt() != null) {
            indent();
            System.out.print("else ");
            //indent += indentSize;
            node.getElseStmt().accept(this);
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
        indent();
        System.out.print("while (");
        node.getPredExpr().accept(this);
        System.out.print(") ");
        node.getBodyStmt().accept(this);
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
        indent();
        System.out.print("for (");
        if (node.getInitExpr() != null) {
            node.getInitExpr().accept(this);
        }
        System.out.print("; ");
        if (node.getPredExpr() != null) {
            node.getPredExpr().accept(this);
        }
        System.out.print("; ");
        if (node.getUpdateExpr() != null) {
            node.getUpdateExpr().accept(this);
        }
        System.out.print(") ");
        node.getBodyStmt().accept(this);
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
        indent();
        System.out.println("break;");
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
        System.out.println("{");
        indent += indentSize;
        node.getStmtList().accept(this);
        indent -= indentSize;
        indent();
        System.out.println("}");
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
        indent();
        if (node.getExpr() == null) {
            System.out.println("return;");
        }
        else {
            System.out.print("return ");
            node.getExpr().accept(this);
            System.out.println(";");
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
    public Object visit(ExprList node) {
        Iterator iter = node.iterator();
        for (int i = 0; iter.hasNext(); i++) {
            ((ASTNode) iter.next()).accept(this);
            if (i < node.getSize() - 1) {
                System.out.print(", ");
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
        if(node.getRefExpr() != null) {
            node.getRefExpr().accept(this);
            System.out.print(".");
        }
        System.out.print(node.getMethodName() + "(");
        node.getActualList().accept(this);
        System.out.print(")");

    }

    /**
     * Print AST node if it is a wrapper
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
        System.out.print("new " + node.getType() + "()");
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
        System.out.print("new " + node.getType() + "[");
        node.getSize().accept(this);
        System.out.print("]");
        return null;
    }

    /**
     * Print contents of InstanceofExpr (doesn't include wrapper)
     *
     * @param node InstanceofExpr node
     */
    private void printInstanceofExpr(InstanceofExpr node){
        node.getExpr().accept(this);
        System.out.print(" instanceof " + node.getType());
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
        System.out.print("(" + node.getType() + ")(");
        node.getExpr().accept(this);
        System.out.print(")");
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
        if (node.getRefName() != null) {
            System.out.print(node.getRefName() + ".");
        }
        System.out.print(node.getName() + " = ");
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
        if (node.getRefName() != null) {
            System.out.print(node.getRefName() + ".");
        }
        System.out.print(node.getName() + "[");
        node.getIndex().accept(this);
        System.out.print("] = ");
        node.getExpr().accept(this);
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
        node.getLeftExpr().accept(this);
        System.out.print(" " + node.getOpName() + " ");
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
        if (!node.isPostfix()) {
            System.out.print(node.getOpName());
        }
        node.getExpr().accept(this);
        if (node.isPostfix()) {
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
        if (node.getRef() != null) {
            node.getRef().accept(this);
            System.out.print(".");
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
