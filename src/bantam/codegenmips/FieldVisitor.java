/*
 * File: FieldVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 4B
 * Date: April 15, 2017
 */

package bantam.codegenmips;

import bantam.ast.Class_;
import bantam.ast.Field;
import bantam.ast.Member;
import bantam.ast.Method;
import bantam.util.ClassTreeNode;
import bantam.visitor.Visitor;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Visitor class to traverse class ast nodes for all fields
 */
public class FieldVisitor extends Visitor {

    /**
     * A list of fields in the class (includes inherited fields)
     * (list of className.fieldName)
     */
    private List<String> fieldList;

    /**
     * Returns list of field names in the class (includes inherited fields)
     *
     * @param classTreeNode ClassTreeNode to get fields
     * @return mapping of fields to classes that they are defined in
     */
    public List<String> getFieldList(ClassTreeNode classTreeNode) {
        fieldList = new ArrayList<>();

        //adds parent fields if a parent class exists
        if(classTreeNode.getParent() != null) {
            fieldList.addAll(getFieldList(classTreeNode.getParent()));
        }
        classTreeNode.getASTNode().accept(this);

        return fieldList;
    }
    /**
     * Traverses the contents of the class, adding its field information to the mapping
     *
     * @param node the class node
     * @return result of the visit
     */
    @Override
    public Object visit(Class_ node) {
        for (Iterator it = node.getMemberList().iterator(); it.hasNext(); ) {
            Field field = (Field)((Member) it.next()).accept(this);
            if(field != null) {
                fieldList.add(node.getName() + "." + field.getName());
            }
        }
        return null;
    }

    /**
     * Does not traverse farther down the method node
     *
     * @param node the field node
     * @return result of the visit
     */
    @Override
    public Object visit(Method node) {
        return null;
    }

    /**
     * Returns the field node
     *
     * @param node the field node
     * @return the field node
     */
    @Override
    public Object visit(Field node) {
        return node;
    }
}

