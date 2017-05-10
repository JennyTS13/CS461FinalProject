/*
 * File: ParserTest.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 3
 * Date: March 11, 2017
 */

package bantam.parser;

import bantam.ast.*;
import java_cup.runtime.Symbol;
import bantam.lexer.Lexer;
import org.junit.BeforeClass;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import bantam.util.ErrorHandler;
import org.junit.rules.Timeout;

import java.io.StringReader;

import static org.junit.Assert.*;

/*
 * File: ParserTest.java
 * Author: djskrien
 * Date: 2/13/17
 */
public class ParserTest
{
    @Rule
    public ExpectedException thrown= ExpectedException.none();

    @BeforeClass
    public static void begin() {
        /* add here any initialization code for all test methods. For example,
         you might want to initialize some fields here. */
    }

    /**
     * Helper method: Takes in contents of a class and returns the member list generated
     * @param memberContent String content of a class
     * @return MemberList form of the content string passed in
     * @throws Exception
     */
    private static MemberList getMemberList(String memberContent) throws Exception{
        //Wraps the contents of a class in a Main class
        String program = new StringBuilder("class Main {")
                .append(memberContent)
                .append("}").toString();
        Parser parser = new Parser(new Lexer(new StringReader(program)));
        Symbol result = parser.parse();
        ClassList classes = ((Program) result.value).getClassList();
        Class_ mainClass = (Class_) classes.get(0);
        return mainClass.getMemberList();
    }

    /**
     * Helper method: Takes in contents of a method and returns the stmt list generated
     * @param stmtContent String content of a method
     * @return StmtList form of the content string passed in
     * @throws Exception
     */
    private static StmtList getStmtList(String stmtContent) throws Exception{
        //Wraps the contents of a method in a void method in a Main class
        String program = new StringBuilder("class Main { ")
                .append("void foo(){")
                .append(stmtContent)
                .append("}}").toString();
        Parser parser = new Parser(new Lexer(new StringReader(program)));
        Symbol result = parser.parse();
        ClassList classes = ((Program) result.value).getClassList();
        Class_ mainClass = (Class_) classes.get(0);
        Method method = (Method)mainClass.getMemberList().get(0);
        return method.getStmtList();
    }

    /** tests the case of a Main class with no members */
    @Test
    public void emptyMainClassTest() throws Exception {
        Parser parser = new Parser(new Lexer(new StringReader("class Main {  }")));
        Symbol result = parser.parse();
        assertEquals(0, parser.getErrorHandler().getErrorList().size());
        assertNotNull(result);
        ClassList classes = ((Program) result.value).getClassList();
        assertEquals(1, classes.getSize());
        Class_ mainClass = (Class_) classes.get(0);
        assertEquals("Main", mainClass.getName());
        assertEquals(0, mainClass.getMemberList().getSize());
    }

    /**
     * tests the case of a missing right brace at end of a class def
     * using an ExpectedException Rule
     */
    @Test
    public void unmatchedLeftBraceTest1() throws Exception {
        Parser parser = new Parser(new Lexer(
                new StringReader("class Main extends Foo {  ")));
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        parser.parse();
    }

    /**
     * tests the case of a missing right brace at end of a class def.
     * This version is like unmatchedLeftBraceTest1 except that it
     * doesn't use an ExpectedException Rule and it also prints the error messages.
     */
    @Test
    public void unmatchedLeftBraceTest2() throws Exception {
        Parser parser = new Parser(new Lexer(new StringReader("class Main {  ")));
        boolean thrown = false;

        try {
            parser.parse();
        } catch (RuntimeException e) {
            thrown = true;
            assertEquals("Bantam parser found errors.", e.getMessage());
            for (ErrorHandler.Error err : parser.getErrorHandler().getErrorList()) {
                System.out.println("unmatchedLeftBraceTest2: " + err);
            }
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a Main class that extends Foo with no members
     * @throws Exception
     */
    @Test
    public void emptyExtendsClassTest() throws Exception {
        Parser parser = new Parser(new Lexer(
                new StringReader("class Main extends Foo{  }")));
        Symbol result = parser.parse();
        assertEquals(0, parser.getErrorHandler().getErrorList().size());
        assertNotNull(result);
        ClassList classes = ((Program) result.value).getClassList();
        assertEquals(1, classes.getSize());
        Class_ mainClass = (Class_) classes.get(0);
        assertEquals("Main", mainClass.getName());
        assertEquals("Foo", mainClass.getParent());
        assertEquals(0, mainClass.getMemberList().getSize());
    }

    /**
     * tests the case of having 2 classes in one program
     * @throws Exception
     */
    @Test
    public void multiClassTest() throws Exception {
        Parser parser = new Parser(new Lexer(
                new StringReader("class Main extends Foo{  } class Bar{ }")));
        Symbol result = parser.parse();
        assertEquals(0, parser.getErrorHandler().getErrorList().size());
        assertNotNull(result);
        ClassList classes = ((Program) result.value).getClassList();
        assertEquals(2, classes.getSize());
        Class_ mainClass = (Class_) classes.get(0);
        assertEquals("Main", mainClass.getName());
        assertEquals("Foo", mainClass.getParent());
        assertEquals(0, mainClass.getMemberList().getSize());
        Class_ bar = (Class_) classes.get(1);
        assertEquals("Bar", bar.getName());
        assertEquals("Object", bar.getParent());
        assertEquals(0, bar.getMemberList().getSize());
    }

    /**
     * tests the case of having more than one member in a class
     * @throws Exception
     */
    @Test
    public void memberTest() throws Exception{
        // actual member content will be tested later
        MemberList memberList = getMemberList("int bar; void foo(){}");
        assertEquals(2, memberList.getSize());
    }

    /**
     * tests the case of uninitialized fields (both array and not arrays)
     * @throws Exception
     */
    @Test
    public void uninitializedFieldTest() throws Exception {
        MemberList memberList = getMemberList("int a; String[] b;");
        assertEquals(2, memberList.getSize());
        Field field1 = (Field)memberList.get(0);
        Field field2 = (Field)memberList.get(1);
        assertEquals("a", field1.getName());
        assertEquals("b", field2.getName());
        assertEquals("int", field1.getType());
        assertEquals("String[]", field2.getType());
        assertNull(field1.getInit());
        assertNull(field2.getInit());
    }

    /**
     * tests the case of initialized fields (both array and not arrays)
     * @throws Exception
     */
    @Test
    public void initializedFieldTest() throws Exception {
        MemberList memberList = getMemberList("int a = 3; String[] b = new int[3];");
        assertEquals(2, memberList.getSize());
        Field field1 = (Field)memberList.get(0);
        Field field2 = (Field)memberList.get(1);
        assertEquals("a", field1.getName());
        assertEquals("b", field2.getName());
        assertEquals("int", field1.getType());
        assertEquals("String[]", field2.getType());
        ConstIntExpr field1Val = (ConstIntExpr)field1.getInit();
        NewArrayExpr field2Val = (NewArrayExpr)field2.getInit();
        ConstIntExpr field2Size = (ConstIntExpr)field2Val.getSize();
        assertEquals(3, field1Val.getIntConstant());
        assertEquals(3, field2Size.getIntConstant());
        assertEquals("String[]", field2.getType());
        assertEquals("int", field2Val.getType());
    }

    /**
     * tests the case of fields missing semicolons
     * @throws Exception
     */
    @Test
    public void invalidFieldTest() throws Exception{
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getMemberList("int a = 3");
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getMemberList("String[] b = new int[3]");
    }

    /**
     * tests the case of empty methods with no parameters
     * @throws Exception
     */
    @Test
    public void paramlessMethodTest() throws Exception {
        MemberList memberList = getMemberList("void foo(){} int bar(){}");
        assertEquals(2, memberList.getSize());
        Method method1 = (Method)memberList.get(0);
        Method method2 = (Method)memberList.get(1);
        //tests void foo(){}
        assertEquals(0, method1.getFormalList().getSize());
        assertEquals("foo", method1.getName());
        assertEquals("void", method1.getReturnType());
        //int bar(){}
        assertEquals(0, method2.getFormalList().getSize());
        assertEquals("bar", method2.getName());
        assertEquals("int", method2.getReturnType());
    }

    /**
     * tests the case of empty methods with one or more parameters
     * @throws Exception
     */
    @Test
    public void methodWithParamTest() throws Exception {
        MemberList memberList =
                getMemberList("void foo(int a){} int bar(String[] a, int b, String c){}");
        assertEquals(2, memberList.getSize());
        Method method1 = (Method)memberList.get(0);
        Method method2 = (Method)memberList.get(1);
        FormalList fl1 = method1.getFormalList();
        FormalList fl2 = method2.getFormalList();
        //tests void foo(int a){}
        assertEquals("foo", method1.getName());
        assertEquals("void", method1.getReturnType());
        assertEquals(1, fl1.getSize());
        assertEquals("int", ((Formal)fl1.get(0)).getType());
        assertEquals("a", ((Formal)fl1.get(0)).getName());
        //tests int bar(String[] a, int b, String c){}
        assertEquals("bar", method2.getName());
        assertEquals("int", method2.getReturnType());
        assertEquals(3, fl2.getSize());
        assertEquals("String[]", ((Formal)fl2.get(0)).getType());
        assertEquals("a", ((Formal)fl2.get(0)).getName());
        assertEquals("int", ((Formal)fl2.get(1)).getType());
        assertEquals("b", ((Formal)fl2.get(1)).getName());
        assertEquals("String", ((Formal)fl2.get(2)).getType());
        assertEquals("c", ((Formal)fl2.get(2)).getName());
    }

    /**
     * tests the case where the method returns an array
     * @throws Exception
     */
    @Test
    public void methodWithArrayRetTypeTest() throws Exception {
        MemberList memberList = getMemberList("int[] foo(int a){}");
        assertEquals(1, memberList.getSize());
        Method method = (Method)memberList.get(0);
        FormalList fl = method.getFormalList();
        StmtList sl = method.getStmtList();
        assertEquals("foo", method.getName());
        assertEquals("int[]", method.getReturnType());
        assertEquals(1, fl.getSize());
        assertEquals(0, sl.getSize());
    }

    /**
     * tests the case where the method is not closed with '}'
     * @throws Exception
     */
    @Test
    public void unclosedMethodTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getMemberList("void foo() {");
    }

    /**
     * tests the case where the parameter type is not specified
     * @throws Exception
     */
    @Test
    public void formalMissingTypeTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getMemberList("void foo(a) {}");
    }

    /**
     * tests the case of expression statements
     * @throws Exception
     */
    @Test
    public void exprStmtTest() throws Exception {
        StmtList stmtList = getStmtList("a; 3;");
        assertEquals(2, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt) stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt) stmtList.get(1);
        VarExpr var1 = (VarExpr)exprStmt1.getExpr();
        ConstIntExpr var2 = (ConstIntExpr)exprStmt2.getExpr();
        assertEquals("a", var1.getName());
        assertEquals(null, var1.getRef());
        assertEquals(3, var2.getIntConstant());
    }

    /**
     * tests the case of having a ExprStmt that's missing a semicolon
     * @throws Exception
     */
    @Test
    public void exprStmtMissingSemicolonTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("a");
    }

    /**
     * tests the case of int and string array declaration
     * @throws Exception
     */
    @Test
    public void declStmtTest() throws Exception {
        StmtList stmtList = getStmtList("int i = 0; String[] s = foo;");
        assertEquals(2, stmtList.getSize());
        DeclStmt declStmt1 = (DeclStmt)stmtList.get(0);
        DeclStmt declStmt2 = (DeclStmt)stmtList.get(1);
        //tests int i = 0;
        assertEquals("int", declStmt1.getType());
        assertEquals("i", declStmt1.getName());
        assertEquals(0, ((ConstIntExpr)declStmt1.getInit()).getIntConstant());
        //tests String[] s = foo;
        VarExpr varForStmt2 = (VarExpr)declStmt2.getInit();
        assertEquals("String[]", declStmt2.getType());
        assertEquals("s", declStmt2.getName());
        assertEquals("foo", varForStmt2.getName());
        assertEquals(null, varForStmt2.getRef());
    }

    /**
     * tests the case of declaration missing semicolon
     * @throws Exception
     */
    @Test
    public void declStmtMissingSemicolonTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("int i = 0");
    }

    /**
     * tests the case of an if statement
     * @throws Exception
     */
    @Test
    public void ifStmtTest() throws Exception {
        StmtList stmtList = getStmtList("if(true) { return; }");
        assertEquals(1, stmtList.getSize());
        IfStmt ifStmt = (IfStmt)stmtList.get(0);
        assertEquals("true", ((ConstBooleanExpr)ifStmt.getPredExpr()).getConstant());
        BlockStmt thenStmt = (BlockStmt)ifStmt.getThenStmt();
        assertEquals(1, thenStmt.getStmtList().getSize());
        assertNull(((ReturnStmt)thenStmt.getStmtList().get(0)).getExpr());
    }

    /**
     * tests the case of an if else statement
     * @throws Exception
     */
    @Test
    public void ifElseStmtTest() throws Exception {
        StmtList stmtList = getStmtList("if(true) return; else { return; } ");
        assertEquals(1, stmtList.getSize());
        IfStmt ifStmt = (IfStmt)stmtList.get(0);
        assertEquals("true", ((ConstBooleanExpr)ifStmt.getPredExpr()).getConstant());
        //tests that the then stmt is just a empty return
        ReturnStmt ret = (ReturnStmt)ifStmt.getThenStmt();
        BlockStmt elseStmt = (BlockStmt)ifStmt.getElseStmt();
        assertNull(ret.getExpr());
        //tests that else is an empty return inside a block stmt
        assertEquals(1, elseStmt.getStmtList().getSize());
        assertNull(((ReturnStmt)elseStmt.getStmtList().get(0)).getExpr());
    }

    /**
     * tests the case of if statements with no predicate
     * @throws Exception
     */
    @Test
    public void predicateLessIfStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("if(){}");
    }

    /**
     * tests the case of if statement with missing body
     * @throws Exception
     */
    @Test
    public void bodyLessIfStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("if(true)");
    }

    /**
     * tests the case of if else statement with missing body
     * @throws Exception
     */
    @Test
    public void bodyLessIfElseStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("if(true) return; else");
    }

    /**
     * tests the case of legal while statement
     * @throws Exception
     */
    @Test
    public void legalWhileStmtTest() throws Exception {
        StmtList stmtList = getStmtList("while(true){}");
        assertEquals(1, stmtList.getSize());
        WhileStmt whileStmt = (WhileStmt)stmtList.get(0);
        assertEquals("true", ((ConstBooleanExpr)whileStmt.getPredExpr()).getConstant());
        assertEquals(0, ((BlockStmt)whileStmt.getBodyStmt()).getStmtList().getSize());
    }

    /**
     * tests the case of while statement with missing predicate
     * @throws Exception
     */
    @Test
    public void predicateLessWhileStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("while(){}");
    }

    /**
     * tests the case of while statement with missing body
     * @throws Exception
     */
    @Test
    public void bodyLessWhileStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("while(true)");
    }

    /**
     * tests the case of for loop with no expressions
     * @throws Exception
     */
    @Test
    public void expressionLessForStmtTest() throws Exception {
        StmtList stmtList = getStmtList("for(;;){}");
        assertEquals(1, stmtList.getSize());
        ForStmt forStmt = (ForStmt)stmtList.get(0);
        assertNull(forStmt.getInitExpr());
        assertNull(forStmt.getPredExpr());
        assertNull(forStmt.getUpdateExpr());
        assertEquals(0, ((BlockStmt)forStmt.getBodyStmt()).getStmtList().getSize());
    }

    /**
     * tests the case of a "complete" for loop
     * @throws Exception
     */
    @Test
    public void completeForStmtTest() throws Exception {
        StmtList stmtList = getStmtList("for( i=0; i<10; i++){}");
        assertEquals(1, stmtList.getSize());
        ForStmt forStmt = (ForStmt)stmtList.get(0);
        assertNotNull(forStmt.getInitExpr());
        assertNotNull(forStmt.getPredExpr());
        assertNotNull(forStmt.getUpdateExpr());
        assertEquals(0, ((BlockStmt)forStmt.getBodyStmt()).getStmtList().getSize());
    }

    /**
     * tests the case of a for loop separated by ',' instead of ';'
     * @throws Exception
     */
    @Test
    public void commaSeparatedForStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("for(,,){}");
    }

    /**
     * tests the case of a for loop with no body
     * @throws Exception
     */
    @Test
    public void bodyLessForStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("for(;;)");
    }

    /**
     * tests the case of a break statement
     * @throws Exception
     */
    @Test
    public void breakStmtTest() throws Exception {
        StmtList stmtList = getStmtList("break;");
        assertEquals(1, stmtList.getSize());
        BreakStmt breakStmt = (BreakStmt)stmtList.get(0);
        assertNotNull(breakStmt);
    }

    /**
     * tests the case of a break statement missing the semicolon
     * @throws Exception
     */
    @Test
    public void unclosedBreakStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("break");
    }

    /**
     * tests the case of an empty return statement
     * @throws Exception
     */
    @Test
    public void emptyReturnStmtTest() throws Exception {
        StmtList stmtList = getStmtList("return;");
        assertEquals(1, stmtList.getSize());
        ReturnStmt returnStmt = (ReturnStmt) stmtList.get(0);
        assertNull(returnStmt.getExpr());
    }

    /**
     * tests the case of return statement
     * @throws Exception
     */
    @Test
    public void returnStmtTest() throws Exception {
        StmtList stmtList = getStmtList("return 3;");
        assertEquals(1, stmtList.getSize());
        ReturnStmt returnStmt = (ReturnStmt) stmtList.get(0);
        assertEquals(3, ((ConstIntExpr)returnStmt.getExpr()).getIntConstant());
    }

    /**
     * tests the case of a return statement missing the semicolon
     * @throws Exception
     */
    @Test
    public void unclosedReturnStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("return 3");
    }

    /**
     * tests the case of an empty block statement
     * @throws Exception
     */
    @Test
    public void emptyBlockStmtTest() throws Exception {
        StmtList stmtList = getStmtList("{}");
        assertEquals(1, stmtList.getSize());
        BlockStmt blockStmt = (BlockStmt) stmtList.get(0);
        assertEquals(0, blockStmt.getStmtList().getSize());
    }

    /**
     * tests the case of a block statement with content
     * @throws
     */
    @Test
    public void blockStmtTest() throws Exception {
        StmtList stmtList = getStmtList("{ return; }");
        assertEquals(1, stmtList.getSize());
        BlockStmt blockStmt = (BlockStmt)stmtList.get(0);
        assertEquals(1, blockStmt.getStmtList().getSize());
        ReturnStmt returnStmt = (ReturnStmt)blockStmt.getStmtList().get(0);
        assertNull(returnStmt.getExpr());
    }

    /**
     * tests the case of unclosed block
     * @throws Exception
     */
    @Test
    public void unclosedBlockStmtTest() throws Exception {
        thrown.expect(RuntimeException.class);
        thrown.expectMessage("Bantam parser found errors.");
        getStmtList("{");
    }

    /**
     * tests the case of assigning value to variable x
     * @throws Exception
     */
    @Test
    public void assignExprTest() throws Exception {
        StmtList stmtList = getStmtList("x = 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        AssignExpr assignExpr = (AssignExpr)exprStmt.getExpr();
        ConstIntExpr constIntExpr = (ConstIntExpr)assignExpr.getExpr();
        assertNull(assignExpr.getRefName());
        assertEquals("x", assignExpr.getName());
        assertEquals(3, constIntExpr.getIntConstant());
    }

    /**
     * tests the case of assigning value with reference
     * @throws Exception
     */
    @Test
    public void assignExprWithRefTest() throws Exception {
        StmtList stmtList = getStmtList("this.x = 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        AssignExpr assignExpr = (AssignExpr)exprStmt.getExpr();
        ConstIntExpr constIntExpr = (ConstIntExpr)assignExpr.getExpr();
        assertEquals("this", assignExpr.getRefName());
        assertEquals("x", assignExpr.getName());
        assertEquals(3, constIntExpr.getIntConstant());
    }

    /**
     * tests the case of assigning to an array
     * @throws Exception
     */
    @Test
    public void arrAssignExprTest() throws Exception {
        StmtList stmtList = getStmtList("x[0] = 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        ArrayAssignExpr arrayAssignExpr = (ArrayAssignExpr)exprStmt.getExpr();
        ConstIntExpr constIntExpr = (ConstIntExpr)arrayAssignExpr.getExpr();
        assertNull(arrayAssignExpr.getRefName());
        assertEquals("x", arrayAssignExpr.getName());
        assertEquals(3, constIntExpr.getIntConstant());
    }

    /**
     * tests the case of assigning to an array with reference
     * @throws Exception
     */
    @Test
    public void arrAssignExprWithRefTest() throws Exception {
        StmtList stmtList = getStmtList("this.x[0] = 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        ArrayAssignExpr arrayAssignExpr = (ArrayAssignExpr)exprStmt.getExpr();
        ConstIntExpr constIntExpr = (ConstIntExpr)arrayAssignExpr.getExpr();
        assertEquals("this", arrayAssignExpr.getRefName());
        assertEquals("x", arrayAssignExpr.getName());
        assertEquals(3, constIntExpr.getIntConstant());
    }

    /**
     * tests the case of dispatch expressions with no references
     * @throws Exception
     */
    @Test
    public void dispatchExprTest() throws Exception {
        StmtList stmtList = getStmtList("foo(); bar(a, b);");
        assertEquals(2, stmtList.getSize());
        DispatchExpr dispatchExpr1 = (DispatchExpr)((ExprStmt)stmtList.get(0)).getExpr();
        DispatchExpr dispatchExpr2 = (DispatchExpr)((ExprStmt)stmtList.get(1)).getExpr();
        //tests foo()
        assertNull(dispatchExpr1.getRefExpr());
        assertEquals("foo", dispatchExpr1.getMethodName());
        assertEquals(0, dispatchExpr1.getActualList().getSize());
        //tests bar(int a, String b)
        assertNull(dispatchExpr2.getRefExpr());
        assertEquals("bar", dispatchExpr2.getMethodName());
        assertEquals(2, dispatchExpr2.getActualList().getSize());
    }

    /**
     * tests the case of dispatch expressions with "references"
     * @throws Exception
     */
    @Test
    public void dispatchExprWithRefTest() throws Exception {
        StmtList stmtList = getStmtList("bar().foo(); foo.bar();");
        assertEquals(2, stmtList.getSize());
        DispatchExpr dispatchExpr1 = (DispatchExpr)((ExprStmt)stmtList.get(0)).getExpr();
        DispatchExpr dispatchExpr2 = (DispatchExpr)((ExprStmt)stmtList.get(1)).getExpr();
        //tests bar().foo()
        assertEquals("foo", dispatchExpr1.getMethodName());
        assertEquals(0, dispatchExpr1.getActualList().getSize());
        //tests foo.bar()
        System.out.println(dispatchExpr2.getRefExpr());
        assertEquals("bar", dispatchExpr2.getMethodName());
        assertEquals(0, dispatchExpr2.getActualList().getSize());
    }

    /**
     * tests the case of a new expression
     * @throws Exception
     */
    @Test
    public void newExprTest() throws Exception {
        StmtList stmtList = getStmtList("new MyClass(); new Array[2];");
        assertEquals(2, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt)stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt)stmtList.get(1);
        NewExpr newExpr = (NewExpr)exprStmt1.getExpr();
        NewArrayExpr newArrayExpr = (NewArrayExpr)exprStmt2.getExpr();
        ConstIntExpr constIntExpr = (ConstIntExpr)newArrayExpr.getSize();
        assertEquals("MyClass", newExpr.getType());
        assertEquals("Array", newArrayExpr.getType());
        assertEquals(2, constIntExpr.getIntConstant());
    }

    /**
     * tests the case of instanceof
     * @throws Exception
     */
    @Test
    public void instanceofTest() throws Exception {
        StmtList stmtList = getStmtList("dog instanceof Animal; " +
                                        "array instanceof int[];");
        assertEquals(2, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt)stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt)stmtList.get(1);
        InstanceofExpr instanceofExpr = (InstanceofExpr)exprStmt1.getExpr();
        InstanceofExpr instanceofArrayExpr = (InstanceofExpr)exprStmt2.getExpr();
        VarExpr varExpr = (VarExpr)instanceofExpr.getExpr();
        VarExpr varArrayExpr = (VarExpr)instanceofArrayExpr.getExpr();
        assertEquals("Animal", instanceofExpr.getType());
        assertEquals("dog", varExpr.getName());
        assertEquals("int[]", instanceofArrayExpr.getType());
        assertEquals("array", varArrayExpr.getName());
    }

    /**
     * tests the case of casting
     * @throws Exception
     */
    @Test
    public void castExprTest() throws Exception {
        StmtList stmtList = getStmtList("(Integer)(x); (Array[])(array);");
        assertEquals(2, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt)stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt)stmtList.get(1);
        CastExpr castExpr = (CastExpr)exprStmt1.getExpr();
        CastExpr castArrayExpr = (CastExpr)exprStmt2.getExpr();
        VarExpr varExpr = (VarExpr)castExpr.getExpr();
        VarExpr varArrayExpr = (VarExpr)castArrayExpr.getExpr();
        assertEquals("Integer", castExpr.getType());
        assertEquals("x", varExpr.getName());
        assertEquals("Array[]", castArrayExpr.getType());
        assertEquals("array", varArrayExpr.getName());
    }

    /**
     * tests the case of a binary arithmetic plus expression
     * @throws Exception
     */
    @Test
    public void binaryArithPlusExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 + 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryArithPlusExpr binaryArithPlusExpr = (BinaryArithPlusExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryArithPlusExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr = (ConstIntExpr)binaryArithPlusExpr.getRightExpr();
        assertEquals("+", binaryArithPlusExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary arithmetic minus expression
     * @throws Exception
     */
    @Test
    public void binaryArithMinusExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 - 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryArithMinusExpr binaryArithMinusExpr =
                                                (BinaryArithMinusExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryArithMinusExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr =
                                        (ConstIntExpr)binaryArithMinusExpr.getRightExpr();
        assertEquals("-", binaryArithMinusExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary arithmetic times expression
     * @throws Exception
     */
    @Test
    public void binaryArithTimesExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 * 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryArithTimesExpr binaryArithTimesExpr =
                                                (BinaryArithTimesExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryArithTimesExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr =
                                        (ConstIntExpr)binaryArithTimesExpr.getRightExpr();
        assertEquals("*", binaryArithTimesExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary arithmetic divide expression
     * @throws Exception
     */
    @Test
    public void binaryArithDivideExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 / 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryArithDivideExpr binaryArithDivideExpr =
                                                (BinaryArithDivideExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryArithDivideExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr =
                                       (ConstIntExpr)binaryArithDivideExpr.getRightExpr();
        assertEquals("/", binaryArithDivideExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary arithmetic modulus expression
     * @throws Exception
     */
    @Test
    public void binaryArithModulusExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 % 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryArithModulusExpr binaryArithModulusExpr =
                (BinaryArithModulusExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr =
                                       (ConstIntExpr)binaryArithModulusExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr =
                                      (ConstIntExpr)binaryArithModulusExpr.getRightExpr();
        assertEquals("%", binaryArithModulusExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary comp equal expression
     * @throws Exception
     */
    @Test
    public void binaryCompEqExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 == 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryCompEqExpr binaryCompEqExpr = (BinaryCompEqExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryCompEqExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr = (ConstIntExpr)binaryCompEqExpr.getRightExpr();
        assertEquals("==", binaryCompEqExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary comp not equal expression
     * @throws Exception
     */
    @Test
    public void binaryCompNeExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 != 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryCompNeExpr binaryCompNeExpr = (BinaryCompNeExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryCompNeExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr = (ConstIntExpr)binaryCompNeExpr.getRightExpr();
        assertEquals("!=", binaryCompNeExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary comp less than expression
     * @throws Exception
     */
    @Test
    public void binaryCompLtExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 < 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryCompLtExpr binaryCompLtExpr = (BinaryCompLtExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryCompLtExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr = (ConstIntExpr)binaryCompLtExpr.getRightExpr();
        assertEquals("<", binaryCompLtExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary comp less than or equal expression
     * @throws Exception
     */
    @Test
    public void binaryCompLeqExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 <= 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryCompLeqExpr binaryCompLeqExpr = (BinaryCompLeqExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryCompLeqExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr = (ConstIntExpr)binaryCompLeqExpr.getRightExpr();
        assertEquals("<=", binaryCompLeqExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary comp greater than expression
     * @throws Exception
     */
    @Test
    public void binaryCompGtExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 > 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryCompGtExpr binaryCompGtExpr = (BinaryCompGtExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryCompGtExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr = (ConstIntExpr)binaryCompGtExpr.getRightExpr();
        assertEquals(">", binaryCompGtExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary comp greater than or equal expression
     * @throws Exception
     */
    @Test
    public void binaryCompGeqExprTest() throws Exception {
        StmtList stmtList = getStmtList("3 >= 3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryCompGeqExpr binaryCompGeqExpr = (BinaryCompGeqExpr)exprStmt.getExpr();
        ConstIntExpr leftConstIntExpr = (ConstIntExpr)binaryCompGeqExpr.getLeftExpr();
        ConstIntExpr rightConstIntExpr = (ConstIntExpr)binaryCompGeqExpr.getRightExpr();
        assertEquals(">=", binaryCompGeqExpr.getOpName());
        assertEquals(3, leftConstIntExpr.getIntConstant());
        assertEquals(3, rightConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a binary logic and expression
     * @throws Exception
     */
    @Test
    public void binaryLogicAndExprTest() throws Exception {
        StmtList stmtList = getStmtList("true && false;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryLogicAndExpr binaryLogicAndExpr = (BinaryLogicAndExpr)exprStmt.getExpr();
        ConstBooleanExpr leftConstIntExpr = (ConstBooleanExpr)binaryLogicAndExpr.getLeftExpr();
        ConstBooleanExpr rightConstIntExpr = (ConstBooleanExpr)binaryLogicAndExpr.getRightExpr();
        assertEquals("&&", binaryLogicAndExpr.getOpName());
        assertEquals("true", leftConstIntExpr.getConstant());
        assertEquals("false", rightConstIntExpr.getConstant());
    }

    /**
     * tests the case of a binary logic or expression
     * @throws Exception
     */
    @Test
    public void binaryLogicOrExprTest() throws Exception {
        StmtList stmtList = getStmtList("true || false;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        BinaryLogicOrExpr binaryLogicOrExpr = (BinaryLogicOrExpr)exprStmt.getExpr();
        ConstBooleanExpr leftConstIntExpr = (ConstBooleanExpr)binaryLogicOrExpr.getLeftExpr();
        ConstBooleanExpr rightConstIntExpr = (ConstBooleanExpr)binaryLogicOrExpr.getRightExpr();
        assertEquals("||", binaryLogicOrExpr.getOpName());
        assertEquals("true", leftConstIntExpr.getConstant());
        assertEquals("false", rightConstIntExpr.getConstant());
    }

    /**
     * tests the case of a unary neg expression
     * @throws Exception
     */
    @Test
    public void unaryNegExprTest() throws Exception {
        StmtList stmtList = getStmtList("-3;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        UnaryNegExpr unaryNegExpr = (UnaryNegExpr)exprStmt.getExpr();
        ConstIntExpr constIntExpr = (ConstIntExpr)unaryNegExpr.getExpr();
        assertEquals("-", unaryNegExpr.getOpName());
        assertEquals(3, constIntExpr.getIntConstant());
    }

    /**
     * tests the case of a unary not expression
     * @throws Exception
     */
    @Test
    public void unaryNotExprTest() throws Exception {
        StmtList stmtList = getStmtList("!true;");
        assertEquals(1, stmtList.getSize());
        ExprStmt exprStmt = (ExprStmt)stmtList.get(0);
        UnaryNotExpr unaryNotExpr = (UnaryNotExpr)exprStmt.getExpr();
        ConstBooleanExpr constBooleanExpr = (ConstBooleanExpr)unaryNotExpr.getExpr();
        assertEquals("!", unaryNotExpr.getOpName());
        assertEquals("true", constBooleanExpr.getConstant());
    }

    /**
     * tests the case of a unary increment expression
     * @throws Exception
     */
    @Test
    public void unaryIncrExprTest() throws Exception {
        StmtList stmtList = getStmtList("++3; 2++;");
        assertEquals(2, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt)stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt)stmtList.get(1);
        UnaryIncrExpr unaryPreIncrExpr = (UnaryIncrExpr)exprStmt1.getExpr();
        UnaryIncrExpr unaryPostIncrExpr = (UnaryIncrExpr)exprStmt2.getExpr();
        ConstIntExpr preConstIntExpr = (ConstIntExpr)unaryPreIncrExpr.getExpr();
        ConstIntExpr postConstIntExpr = (ConstIntExpr)unaryPostIncrExpr.getExpr();
        //tests ++3
        assertEquals("++", unaryPreIncrExpr.getOpName());
        assertEquals(3, preConstIntExpr.getIntConstant());
        //tests 2++
        assertEquals("++", unaryPostIncrExpr.getOpName());
        assertEquals(2, postConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of a unary decrement expression
     * @throws Exception
     */
    @Test
    public void unaryDecrExprTest() throws Exception {
        StmtList stmtList = getStmtList("--3; 2--;");
        assertEquals(2, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt)stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt)stmtList.get(1);
        UnaryDecrExpr unaryPreDecrExpr = (UnaryDecrExpr)exprStmt1.getExpr();
        UnaryDecrExpr unaryPostDecrExpr = (UnaryDecrExpr)exprStmt2.getExpr();
        ConstIntExpr preConstIntExpr = (ConstIntExpr)unaryPreDecrExpr.getExpr();
        ConstIntExpr postConstIntExpr = (ConstIntExpr)unaryPostDecrExpr.getExpr();
        //tests --3
        assertEquals("--", unaryPreDecrExpr.getOpName());
        assertEquals(3, preConstIntExpr.getIntConstant());
        //tests 2--
        assertEquals("--", unaryPostDecrExpr.getOpName());
        assertEquals(2, postConstIntExpr.getIntConstant());
    }

    /**
     * tests the case of var expression
     * @throws Exception
     */
    @Test
    public void varExprTest() throws Exception {
        StmtList stmtList = getStmtList("x; this.y;");
        assertEquals(2, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt)stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt)stmtList.get(1);
        VarExpr varExpr = (VarExpr)exprStmt1.getExpr();
        VarExpr varWithRefExpr = (VarExpr)exprStmt2.getExpr();
        //tests x
        assertEquals("x", varExpr.getName());
        //tests this.y
        VarExpr ref = (VarExpr)varWithRefExpr.getRef();
        assertEquals("this", ref.getName());
        assertEquals("y", varWithRefExpr.getName());
    }

    /**
     * tests the case of array expression
     * @throws Exception
     */
    @Test
    public void arrayExprTest() throws Exception {
        StmtList stmtList = getStmtList("x[0]; this.y[1];");
        assertEquals(2, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt)stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt)stmtList.get(1);
        ArrayExpr arrayExpr = (ArrayExpr)exprStmt1.getExpr();
        ArrayExpr arrayWithRefExpr = (ArrayExpr)exprStmt2.getExpr();
        ConstIntExpr constIntExpr = (ConstIntExpr)arrayExpr.getIndex();
        ConstIntExpr constIntWithRefExpr = (ConstIntExpr)arrayWithRefExpr.getIndex();
        //tests x[0]
        assertEquals("x", arrayExpr.getName());
        assertEquals(0, constIntExpr.getIntConstant());
        //tests this.y[1]
        VarExpr ref = (VarExpr)arrayWithRefExpr.getRef();
        assertEquals("this", ref.getName());
        assertEquals("y", arrayWithRefExpr.getName());
        assertEquals(1, constIntWithRefExpr.getIntConstant());
    }

    /**
     * tests the case of shortcut assignment expressions
     * @throws Exception
     */
    @Test
    public void shortcutAssignExprTest() throws Exception {
        StmtList stmtList = getStmtList("x+=3; x-=3; x*=3; x/=3; x%=3;");
        assertEquals(5, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt)stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt)stmtList.get(1);
        ExprStmt exprStmt3 = (ExprStmt)stmtList.get(2);
        ExprStmt exprStmt4 = (ExprStmt)stmtList.get(3);
        ExprStmt exprStmt5 = (ExprStmt)stmtList.get(4);
        PlusEqualsExpr plusEqualsExpr = (PlusEqualsExpr)exprStmt1.getExpr();
        MinusEqualsExpr minusEqualsExpr = (MinusEqualsExpr)exprStmt2.getExpr();
        TimesEqualsExpr timesEqualsExpr = (TimesEqualsExpr)exprStmt3.getExpr();
        DivEqualsExpr divEqualsExpr = (DivEqualsExpr)exprStmt4.getExpr();
        ModEqualsExpr modEqualsExpr = (ModEqualsExpr)exprStmt5.getExpr();

        //tests x+=3
        assertEquals("+=", plusEqualsExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)plusEqualsExpr.getExpr()).getIntConstant());
        //tests x-=3
        assertEquals("-=", minusEqualsExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)minusEqualsExpr.getExpr()).getIntConstant());
        //tests x*=3
        assertEquals("*=", timesEqualsExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)timesEqualsExpr.getExpr()).getIntConstant());
        //tests x/=3
        assertEquals("/=", divEqualsExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)divEqualsExpr.getExpr()).getIntConstant());
        //tests x%=3
        assertEquals("%=", modEqualsExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)modEqualsExpr.getExpr()).getIntConstant());
    }

    /**
     * tests the case of bitwise logic expressions
     * @throws Exception
     */
    @Test
    public void bitwiseLogicTest() throws Exception {
        StmtList stmtList = getStmtList("~3; 3&3; 3|3; 3^3; 3<<3; 3>>3; 3>>>3;");
        assertEquals(7, stmtList.getSize());
        ExprStmt exprStmt1 = (ExprStmt)stmtList.get(0);
        ExprStmt exprStmt2 = (ExprStmt)stmtList.get(1);
        ExprStmt exprStmt3 = (ExprStmt)stmtList.get(2);
        ExprStmt exprStmt4 = (ExprStmt)stmtList.get(3);
        ExprStmt exprStmt5 = (ExprStmt)stmtList.get(4);
        ExprStmt exprStmt6 = (ExprStmt)stmtList.get(5);
        ExprStmt exprStmt7 = (ExprStmt)stmtList.get(6);
        UnaryBitNotExpr notExpr = (UnaryBitNotExpr)exprStmt1.getExpr();
        BinaryLogicBitAndExpr andExpr = (BinaryLogicBitAndExpr)exprStmt2.getExpr();
        BinaryLogicBitOrExpr orExpr = (BinaryLogicBitOrExpr)exprStmt3.getExpr();
        BinaryLogicBitXorExpr xorExpr = (BinaryLogicBitXorExpr)exprStmt4.getExpr();
        BinaryLogicLeftShiftExpr leftShiftExpr = (BinaryLogicLeftShiftExpr)exprStmt5.getExpr();
        BinaryLogicRightShiftExpr rightShiftExpr = (BinaryLogicRightShiftExpr)exprStmt6.getExpr();
        BinaryLogicUnsignedShiftExpr unsignedShiftExpr = (BinaryLogicUnsignedShiftExpr)exprStmt7.getExpr();

        //tests ~3
        assertEquals("~", notExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)notExpr.getExpr()).getIntConstant());
        //tests 3&3
        assertEquals("&", andExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)andExpr.getLeftExpr()).getIntConstant());
        assertEquals(3, ((ConstIntExpr)andExpr.getRightExpr()).getIntConstant());
        //tests 3|3
        assertEquals("|", orExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)orExpr.getLeftExpr()).getIntConstant());
        assertEquals(3, ((ConstIntExpr)orExpr.getRightExpr()).getIntConstant());
        //tests 3^3
        assertEquals("^", xorExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)xorExpr.getLeftExpr()).getIntConstant());
        assertEquals(3, ((ConstIntExpr)xorExpr.getRightExpr()).getIntConstant());
        //tests 3<<3
        assertEquals("<<", leftShiftExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)leftShiftExpr.getLeftExpr()).getIntConstant());
        assertEquals(3, ((ConstIntExpr)leftShiftExpr.getRightExpr()).getIntConstant());
        //tests 3>>3
        assertEquals(">>", rightShiftExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)rightShiftExpr.getLeftExpr()).getIntConstant());
        assertEquals(3, ((ConstIntExpr)rightShiftExpr.getRightExpr()).getIntConstant());
        //tests 3>>>3
        assertEquals(">>>", unsignedShiftExpr.getOpName());
        assertEquals(3, ((ConstIntExpr)unsignedShiftExpr.getLeftExpr()).getIntConstant());
        assertEquals(3, ((ConstIntExpr)unsignedShiftExpr.getRightExpr()).getIntConstant());

    }

}
