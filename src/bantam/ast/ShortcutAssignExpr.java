/*
 * File: ShortcutAssignExpr.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 6
 * Date: May 10, 2017
 */

package bantam.ast;

/**
 * The abstract ShortcutAssignExpr class represents shortcut assign expressions
 * It can be either '+=', '-=', '*=', '/=', '%='.
 *
 * @see ASTNode
 * @see Expr
 */
public abstract class ShortcutAssignExpr extends AssignExpr{

    /**
     * ShortcutAssignExpr constructor
     *
     * @param lineNum source line number corresponding to this AST node
     * @param refName the optional reference object used to access the lefthand variable
     * @param name    the name of the lefthand variable
     * @param expr    righthand expression for assigning to the lefthand variable
     */
    public ShortcutAssignExpr(int lineNum, String refName, String name, Expr expr) {
        super(lineNum, refName, name, expr);
    }

    /**
     * Get the operation name (e.g., "+=")
     * (must be defined by each subclass)
     *
     * @return op name
     */
    abstract public String getOpName();

    /**
     * Get the operation type (e.g., "int")
     * (must be defined by each subclass)
     *
     * @return op type
     */
    abstract public String getOpType();

    /**
     * Get the operand type (e.g., "int")
     * (must be defined by each subclass)
     *
     * @return operand type
     */
    abstract public String getOperandType();
}
