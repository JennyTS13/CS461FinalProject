/*
 * File: StringConstantsVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 4A
 * Date: April 2, 2017
 */

package bantam.codegenmips;

import bantam.ast.Class_;
import bantam.ast.ConstStringExpr;
import bantam.ast.FormalList;
import bantam.visitor.Visitor;

import java.util.ArrayList;
import java.util.List;

/**
 * Visitor class to traverse class ast nodes for all string constants
 */
public class StringConstantsVisitor extends Visitor {

    /**
     * A list of string constants
     */
    private List<String> stringList;

    /**
     * Constructor
     */
    public StringConstantsVisitor() {
        stringList = new ArrayList<>();
    }

    /**
     * Returns list of string constants registered from the classes traversed
     *
     * @return list of string constants from traversed classes
     */
    public List<String> getStringConstantList(){
        return stringList;
    }

    /**
     * Adds all string constants of provided class to string constant list
     *
     * @param node the Class_ node to traverse for string constants
     */
    public void registerStringsInClass(Class_ node){
        node.accept(this);
    }

    /**
     * Does not traverse farther down the formal list
     *
     * @param node the formal list node
     * @return result of the visit
     */
    @Override
    public Object visit(FormalList node){
        return null;
    }

    /**
     * Adds the string to list of string constants if it is not already there
     *
     * @param node the string constant expression node
     * @return result of the visit
     */
    @Override
    public Object visit(ConstStringExpr node) {
        if(!stringList.contains(node.getConstant())) {
            stringList.add(node.getConstant());
        }
        return null;
    }
}
