/*
 * File: MainMainVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 3
 * Date: March 11, 2017
 */

package bantam.visitor;

import bantam.ast.*;
import bantam.lexer.Lexer;
import bantam.parser.Parser;

import java.io.StringReader;

/**
 * Visitor class to traverse the program ast for a Main class with a void main method
 */
public class MainMainVisitor extends Visitor {

    /**
     * boolean value indicating whether of not the program has
     * a Main class with a void main method with no param
     */
    private boolean hasMain;

    /**
     * Checks to see if the program has a Main class with a void main method with no param
     *
     * @param ast the AST node forming the root of the tree
     * @return whether the program has a Main class with a void main method with no param
     */
    public boolean hasMain(Program ast) {
        hasMain = false;
        ast.accept(this);
        return hasMain;
    }

    /**
     * Visits farther down the tree if it's a Main class
     *
     * @param node the class node
     * @return result of the visit
     */
    @Override
    public Object visit(Class_ node) {
        if(node.getName().equals("Main")) {
            super.visit(node);
        }
        return null;
    }

    /**
     * Do not traverse farther down the tree
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Field node) {
        return null;
    }

    /**
     * Checks to see if the method is named main and has no parameters
     *
     * @param node the method node
     * @return result of the visit
     */
    @Override
    public Object visit(Method node) {
        if(node.getName().equals("main") &&
                node.getReturnType().equals("void") &&
                node.getFormalList().getSize() == 0) {
            hasMain = true;
        }
        return null;
    }

    /**
     * very simple test
     * @param args unused
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {
        MainMainVisitor mainMainVisitor = new MainMainVisitor();
        Parser parser = new Parser(new Lexer(
                new StringReader("class Main { void main(){} }")));
        System.out.println("Should be true: " +
                mainMainVisitor.hasMain((Program)parser.parse().value));
        parser = new Parser(new Lexer(
                new StringReader("class Foo { void main(){} }")));
        System.out.println("Should be false: " +
                mainMainVisitor.hasMain((Program)parser.parse().value));
        parser = new Parser(new Lexer(
                new StringReader("class Main { void foo(){} }")));
        System.out.println("Should be false: " +
                mainMainVisitor.hasMain((Program)parser.parse().value));
        parser = new Parser(new Lexer(
                new StringReader("class Foo { void bar(){} }")));
        System.out.println("Should be false: " +
                mainMainVisitor.hasMain((Program)parser.parse().value));
    }
}
