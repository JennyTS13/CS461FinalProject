/*
 * File: Other.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 5
 * Date: April 28, 2017
 */

package bantam.ast;

import bantam.visitor.Visitor;

/**
 * An Other node extends ASTNode and holds information such as
 * spacing ("  /n  "), comments (" //for loop ") and wrappers ("(", ")")
 */
public class Other extends ASTNode {

    /**
     * The contents of the AST node
     */
    protected String contents;

    /**
     * boolean indicating if the node is a wrapper node
     */
    protected boolean exprWrapper;

    /**
     * Class_ constructor
     *
     * @param lineNum    source line number corresponding to this AST node
     * @param contents   the contents of this AST node
     */
    public Other(int lineNum, String contents) {
        super(lineNum);
        this.contents = contents;
        this.exprWrapper = false;
    }

    /**
     * Get the contents of this AST node
     *
     * @return contents
     */
    public String getContents() {
        return contents;
    }

    /**
     * Make the node a wrapper node
     */
    public void setWrapper() {
        this.exprWrapper = true;
    }

    /**
     * Returns a boolean indicating if the node is a wrapper node for an expression
     *
     * @return boolean indicating if the node is a wrapper node for an expression
     */
    public boolean isExprWrapper(){
        return this.exprWrapper;
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
