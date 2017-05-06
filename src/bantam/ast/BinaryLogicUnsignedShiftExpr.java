/*
 * File: BinaryLogicUnsignedShiftExpr.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 6
 * Date: May 10, 2017
 */

package bantam.ast;

import bantam.visitor.Visitor;

/**
 * The BinaryLogicLeftShiftExpr class represents unsigned right shift expressions.
 * It extends binary logical expressions so it contains a lefthand
 * expression and a righthand expression.  Since this class is similar
 * to other subclasses most of the functionality can be implemented in
 * the bantam.visitor method for the parent class.
 */
public class BinaryLogicUnsignedShiftExpr extends BinaryLogicExpr {

    /**
     * BinaryLogicUnsignedShiftExpr constructor
     *
     * @param lineNum   source line number corresponding to this AST node
     * @param leftExpr  lefthand expression for bitwise OR-ing
     * @param rightExpr righthand expression for bitwise OR-ing
     */
    public BinaryLogicUnsignedShiftExpr(int lineNum, Expr leftExpr, Expr rightExpr) {
        super(lineNum, leftExpr, rightExpr);
    }

    /**
     * Get the operation name
     *
     * @return op name
     */
    public String getOpName() {
        return ">>>";
    }

    /**
     * Get the operation type
     *
     * @return op type
     */
    public String getOpType() {
        return "int";
    }

    /**
     * Get the operand type
     *
     * @return operand type
     */
    public String getOperandType() {
        return "int";
    }

    /**
     * Visitor method
     *
     * @param v bantam.visitor object
     * @return result of visiting this node
     * @see bantam.visitor.Visitor
     */
    public Object accept(Visitor v) {
        return v.visit(this);
    }
}