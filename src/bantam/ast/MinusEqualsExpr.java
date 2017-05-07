/*
 * File: MinusEqualsExpr.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 6
 * Date: May 10, 2017
 */

package bantam.ast;

import bantam.visitor.Visitor;

/**
 * The MinusEqualsExpr class represents '-=' expressions
 *
 * @see ASTNode
 * @see Expr
 */
public class MinusEqualsExpr extends ShortcutAssignExpr{

    /**
     * MinusEqualsExpr constructor
     *
     * @param lineNum source line number corresponding to this AST node
     * @param refName the optional reference object used to access the lefthand variable
     * @param name    the name of the lefthand variable
     * @param expr    righthand expression for subtracting from the lefthand variable
     */
    public MinusEqualsExpr(int lineNum, String refName, String name, Expr expr) {
        super(lineNum, refName, name, expr);
    }

    /**
     * Get the operation name ("-=")
     *
     * @return op name
     */
    public String getOpName() {
        return "-=";
    }

    /**
     * Get the operation type (e.g., "int")
     *
     * @return op type
     */
    public String getOpType() {
        return "int";
    }

    /**
     * Get the operand type (e.g., "int")
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
    @Override
    public Object accept(Visitor v) {
        return v.visit(this);
    }
}
