/*
 * File: UnaryBitNotExpr.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 6
 * Date: May 10, 2017
 */

package bantam.ast;

import bantam.visitor.Visitor;

/**
 * The UnaryBitNotExpr class represents bitwise not expressions.
 * It extends binary logical expressions so it contains a lefthand
 * expression and a righthand expression.  Since this class is similar
 * to other subclasses most of the functionality can be implemented in
 * the bantam.visitor method for the parent class.
 */
public class UnaryBitNotExpr extends UnaryExpr{

    /**
     * UnaryBitNotExpr constructor
     *
     * @param lineNum source line number corresponding to this AST node
     * @param expr    expression for complementing
     */
    public UnaryBitNotExpr(int lineNum, Expr expr) {
        super(lineNum, expr);
    }

    /**
     * Get the operation name
     *
     * @return op name
     */
    public String getOpName() {
        return "~";
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
     * Is this a postfix operator (as opposed to prefix)?
     *
     * @return boolean indicating whether postfix operator
     */
    public boolean isPostfix() {
        return false;
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
