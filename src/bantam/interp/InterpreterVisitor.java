/*
 * File: InterpreterVisitor.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 5
 * Date: April 28, 2017
 */

package bantam.interp;

import bantam.ast.*;
import bantam.visitor.Visitor;

/**
 * Visitor class to interpret code
 */
public class InterpreterVisitor extends Visitor {

        /**
         * Interpret code for a method node
         *
         * @param node the method node
         * @return result of the visit
         */
        @Override
        public Object visit(Method node) {

            return null;
        }

        /**
         * Visit formal node
         *
         * @param node the formal node
         * @return result of the visit
         */
        @Override
        public Object visit(Formal node) {
            return node.getName();
        }

        /**
         * Visit declaration statement node
         *
         * @param node the declaration statement node
         * @return result of the visit
         */
        @Override
        public Object visit(DeclStmt node) {

            return null;
        }

        /**
         * Interpret code for an if statement node
         *
         * @param node the if statement node
         * @return result of the visit
         */
        @Override
        public Object visit(IfStmt node) {
            // if statement
            if ((boolean)node.getPredExpr().accept(this)) {
                node.getThenStmt().accept(this);
            }
            // else statement
            else {
                if (node.getElseStmt() != null) {
                    node.getElseStmt().accept(this);
                }
            }
            return null;
        }

        /**
         * Interpret code for a while statement node
         *
         * @param node the while statement node
         * @return result of the visit
         */
        @Override
        public Object visit(WhileStmt node) {
            // while statement
            while ((boolean)node.getPredExpr().accept(this)) {
                // body
                node.getBodyStmt().accept(this);
            }
            return null;
        }

        /**
         * Interpret code for a for statement node
         *
         * @param node the for statement node
         * @return result of the visit
         */
        @Override
        public Object visit(ForStmt node) {
            return null;
        }

        /**
         * Interpret code for a break statement node
         *
         * @param node the break statement node
         * @return result of the visit
         */
        @Override
        public Object visit(BreakStmt node) {

            return null;
        }

        /**
         * Visit a block statement node
         *
         * @param node the block statement node
         * @return result of the visit
         */
        @Override
        public Object visit(BlockStmt node) {
            return null;
        }

        /**
         * Interpret code for a return statement node
         *
         * @param node the return statement node
         * @return result of the visit
         */
        @Override
        public Object visit(ReturnStmt node) {
            if (node.getExpr() != null) {
                return node.getExpr().accept(this);
            }
            return null;
        }

        /**
         * Interpret code for a list node of expressions
         *
         * @param node the expression list node
         * @return result of the visit
         */
        public Object visit(ExprList node) {
            return null;
        }

        /**
         * Interpret code for a dispatch expression node
         *
         * @param node the dispatch expression node
         * @return result of the visit
         */
        @Override
        public Object visit(DispatchExpr node) {

            return null;
        }

        /**
         * Interpret code for a new expression node
         *
         * @param node the new expression node
         * @return result of the visit
         */
        @Override
        public Object visit(NewExpr node) {

            return null;
        }

        /**
         * Interpret code for an instanceof expression node
         *
         * @param node the instanceof expression node
         * @return result of the visit
         */
        @Override
        public Object visit(InstanceofExpr node) {

            return null;
        }

        /**
         * Interpret code for a cast expression node
         *
         * @param node the cast expression node
         * @return result of the visit
         */
        @Override
        public Object visit(CastExpr node) {

            return null;
        }

        /**
         * Interpret code for an assignment expression node
         *
         * @param node the assignment expression node
         * @return result of the visit
         */
        @Override
        public Object visit(AssignExpr node) {

            return null;
        }

        /**
         * Interpret code for a binary comparison equals expression node
         *
         * @param node the binary comparison equals expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryCompEqExpr node) {
            Object leftExpr = node.getLeftExpr().accept(this);
            Object rightExpr = node.getRightExpr().accept(this);

            return leftExpr.equals(rightExpr);
        }

        /**
         * Interpret code for a binary comparison not equals expression node
         *
         * @param node the binary comparison not equals expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryCompNeExpr node) {
            Object leftExpr = node.getLeftExpr().accept(this);
            Object rightExpr = node.getRightExpr().accept(this);

            return !leftExpr.equals(rightExpr);
        }

        /**
         * Interpret code for a binary comparison less than expression node
         *
         * @param node the binary comparison less than expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryCompLtExpr node) {
            int leftExpr = (int)node.getLeftExpr().accept(this);
            int rightExpr = (int)node.getRightExpr().accept(this);

            return leftExpr < rightExpr;
        }

        /**
         * Interpret code for a binary comparison less than or equal to expression node
         *
         * @param node the binary comparison less than or equal to expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryCompLeqExpr node) {
            int leftExpr = (int)node.getLeftExpr().accept(this);
            int rightExpr = (int)node.getRightExpr().accept(this);

            return leftExpr <= rightExpr;
        }

        /**
         * Interpret code for a binary comparison greater than expression node
         *
         * @param node the binary comparison greater than expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryCompGtExpr node) {
            int leftExpr = (int)node.getLeftExpr().accept(this);
            int rightExpr = (int)node.getRightExpr().accept(this);

            return leftExpr > rightExpr;
        }

        /**
         * Interpret code for a binary comparison greater than or equal to expression node
         *
         * @param node the binary comparison greater to or equal to expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryCompGeqExpr node) {
            int leftExpr = (int)node.getLeftExpr().accept(this);
            int rightExpr = (int)node.getRightExpr().accept(this);

            return leftExpr >= rightExpr;
        }

        /**
         * Interpret code for a binary arithmetic plus expression node
         *
         * @param node the binary arithmetic plus expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryArithPlusExpr node) {
            int leftExpr = (int)node.getLeftExpr().accept(this);
            int rightExpr = (int)node.getRightExpr().accept(this);

            return leftExpr + rightExpr;
        }

        /**
         * Interpret code for a binary arithmetic minus expression node
         *
         * @param node the binary arithmetic minus expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryArithMinusExpr node) {
            int leftExpr = (int)node.getLeftExpr().accept(this);
            int rightExpr = (int)node.getRightExpr().accept(this);

            return leftExpr - rightExpr;
        }

        /**
         * Interpret code for a binary arithmetic times expression node
         *
         * @param node the binary arithmetic times expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryArithTimesExpr node) {
            int leftExpr = (int)node.getLeftExpr().accept(this);
            int rightExpr = (int)node.getRightExpr().accept(this);

            return leftExpr * rightExpr;
        }

        /**
         * Interpret code for a binary arithmetic divide expression node
         *
         * @param node the binary arithmetic divide expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryArithDivideExpr node) {
            int leftExpr = (int)node.getLeftExpr().accept(this);
            int rightExpr = (int)node.getRightExpr().accept(this);

            // divide by zero
            if (rightExpr == 0) {

            }
            return leftExpr / rightExpr;
        }

        /**
         * Interpret code for a binary arithmetic modulus expression node
         *
         * @param node the binary arithmetic modulus expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryArithModulusExpr node) {
            int leftExpr = (int)node.getLeftExpr().accept(this);
            int rightExpr = (int)node.getRightExpr().accept(this);

            return leftExpr % rightExpr;
        }

        /**
         * Interpret code for a binary logical AND expression node
         *
         * @param node the binary logical AND expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryLogicAndExpr node) {
            boolean leftExpr = (boolean)node.getLeftExpr().accept(this);
            boolean rightExpr = (boolean)node.getRightExpr().accept(this);

            return leftExpr && rightExpr;
        }

        /**
         * Interpret code for a binary logical OR expression node
         *
         * @param node the binary logical OR expression node
         * @return result of the visit
         */
        @Override
        public Object visit(BinaryLogicOrExpr node) {
            boolean leftExpr = (boolean)node.getLeftExpr().accept(this);
            boolean rightExpr = (boolean)node.getRightExpr().accept(this);

            return leftExpr || rightExpr;
        }

        /**
         * Interpret code for a unary negation expression node
         *
         * @param node the unary negation expression node
         * @return result of the visit
         */
        @Override
        public Object visit(UnaryNegExpr node) {
            int result = (int)node.getExpr().accept(this);

            return -result;
        }

        /**
         * Interpret code for a unary NOT expression node
         *
         * @param node the unary NOT expression node
         * @return result of the visit
         */
        @Override
        public Object visit(UnaryNotExpr node) {
            boolean result = (boolean)node.getExpr().accept(this);

            return !result;
        }

        /**
         * Interpret code for a unary increment expression node
         *
         * @param node the unary increment expression node
         * @return result of the visit
         */
        @Override
        public Object visit(UnaryIncrExpr node) {
            return null;
        }

        /**
         * Interpret code for a unary decrement expression node
         *
         * @param node the unary decrement expression node
         * @return result of the visit
         */
        @Override
        public Object visit(UnaryDecrExpr node) {
            return null;
        }

        /**
         * Interpret code for a variable expression node
         *
         * @param node the variable expression node
         * @return Location of the variable
         */
        @Override
        public Object visit(VarExpr node) {
            return null;
        }

        /**
         * Interpret code for an int constant expression node
         *
         * @param node the int constant expression node
         * @return result of the visit
         */
        @Override
        public Object visit(ConstIntExpr node) {
            return node.getIntConstant();
        }

        /**
         * Interpret code for a boolean constant expression node
         *
         * @param node the boolean constant expression node
         * @return result of the visit
         */
        @Override
        public Object visit(ConstBooleanExpr node) {
            return Boolean.parseBoolean(node.getConstant());
        }

        /**
         * Interpret code for a string constant expression node
         *
         * @param node the string constant expression node
         * @return result of the visit
         */
        @Override
        public Object visit(ConstStringExpr node) {
            return node.getConstant();
        }


}
