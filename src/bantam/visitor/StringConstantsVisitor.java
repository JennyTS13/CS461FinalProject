/*
 * File: StringConstantsVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 4A
 * Date: April 2, 2017
 */

package bantam.visitor;

import bantam.ast.ConstStringExpr;
import bantam.ast.Program;

import java.util.HashMap;
import java.util.Map;

/**
 * Visitor class to traverse the program ast for all string constants
 */
public class StringConstantsVisitor extends Visitor {

    /**
     * A map of string constants to their unique reference name
     */
    private Map<String,String> stringMap;

    /**
     * Returns a mapping of string constants to their unique reference name
     *
     * @param ast the AST node forming the root of the tree
     * @return mapping of string constants to their unique reference name
     */
    public Map<String,String> getStringConstants(Program ast) {
        stringMap = new HashMap<>();
        ast.accept(this);
        return stringMap;
    }

    /**
     * Adds to map keys that are the String constants from the program
     * and values that are names for the String constants
     *
     * @param node the string constant expression node
     * @return result of the visit
     */
    @Override
    public Object visit(ConstStringExpr node) {
        stringMap.put(node.getConstant(), "StringConst_"+stringMap.size());
        return null;
    }

}
