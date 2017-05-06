/*
 * File: MethodVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 4B
 * Date: April 15, 2017
 */

package bantam.codegenmips;

import bantam.ast.*;
import bantam.util.ClassTreeNode;
import bantam.visitor.Visitor;
import javafx.util.Pair;

import java.util.*;

/**
 * Visitor class to traverse class ast nodes for all methods
 */
public class MethodVisitor extends Visitor {

    /**
     * A mapping of methods to the classes that they are defined in
     * <Method name, <Class name, Method>>
     */
    private Map<String, Pair<String, Method>> methodNameToClassMethodPairMapping;

    /**
     * Returns mapping of methods to the classes that they are defined in
     *
     * @param classTreeNode ClassTreeNode to get methods
     * @return mapping of methods to classes that they are defined in
     */
    public Map<String, Pair<String, Method>> getMethodMapping(ClassTreeNode
                                                                      classTreeNode) {
        //Using LinkedHashMap since its "sorted" by insertion order
        methodNameToClassMethodPairMapping = new LinkedHashMap<>();

        //adds parent methods if a parent class exists
        if(classTreeNode.getParent() != null) {
            methodNameToClassMethodPairMapping.putAll(
                    getMethodMapping(classTreeNode.getParent()));
        }
        classTreeNode.getASTNode().accept(this);

        return methodNameToClassMethodPairMapping;
    }
    /**
     * Traverses the contents of the class, adding its method information to the mapping
     *
     * @param node the class node
     * @return result of the visit
     */
    @Override
    public Object visit(Class_ node) {
        for (Iterator it = node.getMemberList().iterator(); it.hasNext(); ) {
            Method method = (Method)((Member) it.next()).accept(this);
            if(method != null) {
                Pair<String, Method> classNameToMethodPair =
                        new Pair<>(node.getName(), method);
                methodNameToClassMethodPairMapping.put(
                        method.getName(), classNameToMethodPair);
            }
        }
        return null;
    }

    /**
     * Does not traverse farther down the field node
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Field node) {
        return null;
    }

    /**
     * Returns the method node
     *
     * @param node the method node
     * @return the method node
     */
    @Override
    public Object visit(Method node) {
        return node;
    }
}

