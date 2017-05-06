/*
 * File: Other.java
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

package bantam.ast;

import bantam.visitor.Visitor;

/**
 * The <tt>Class_</tt> class represents a class declaration,
 * which consists of a filename (<tt>filename</tt>), a class name
 * (<tt>name</tt>), the name of its parent class (<tt>parent</tt>),
 * and a list of members (<tt>members</tt>) which can be either field
 * declarations or method declarations.
 *
 * @see ASTNode
 */
public class Comment extends ASTNode {
    /**
     * The filename of the file containing this class
     */
    protected String contents;

    /**
     * Class_ constructor
     *
     * @param lineNum    source line number corresponding to this AST node
     * @param contents   the contents of this AST node
     */
    public Comment(int lineNum, String contents) {
        super(lineNum);
        this.contents = contents;
    }

    /**
     * Get the contents of this AST node
     *
     * @return file name
     */
    public String getContents() {
        return contents;
    }

    /**
     * Visitor method
     *
     * @param v bantam.visitor object
     * @return result of visiting this node
     * @see Visitor
     */
    public Object accept(Visitor v) {
        return v.visit(this);
    }
}
