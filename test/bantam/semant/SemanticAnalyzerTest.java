/*
 * File: SemanticAnalyzerTest.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 3
 * Date: March 11, 2017
 */

package bantam.semant;

import bantam.ast.Program;
import bantam.lexer.Lexer;
import org.junit.Rule;
import org.junit.Test;
import bantam.parser.Parser;
import bantam.util.ErrorHandler;

import java.io.StringReader;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

/*
 * File: SemanticAnalyzerTest.java
 * Author: djskrien
 * Date: 2/13/17
 */
public class SemanticAnalyzerTest {

    /**
     * Helper method: Takes in contents of program and returns a SemanticAnalyzer
     * after scanning and parsing
     *
     * @param code String of program content
     * @return SemanticAnalyzer after scanning and parsing code
     * @throws Exception
     */
    private static SemanticAnalyzer getSemanticAnalyzer(String code) throws Exception {
        Parser parser = new Parser(new Lexer(new StringReader(code)));
        Program program = (Program) parser.parse().value;
        return new SemanticAnalyzer(program, false);
    }

    /**
     * tests the case of no Main class
     *
     * @throws Exception
     */
    @Test
    public void testNoMainClass() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Foo {}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(1, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Missing Main class");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a Main class with no members.
     * This is illegal because a Bantam Java program must have a
     * Main class with a main method.
     *
     * @throws Exception
     */
    @Test
    public void testEmptyMainClass() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(1, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a Main class with non-void main method
     *
     * @throws Exception
     */
    @Test
    public void testNonVoidMainMethod() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main { " +
                    "int main() {}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Missing return statement.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a Main class with void main method with parameters
     *
     * @throws Exception
     */
    @Test
    public void testVoidMainMethodWithParam() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main(int a) {}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(1, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a Main class that extends another class but neither have
     * a void main() method
     *
     * @throws Exception
     */
    @Test
    public void testMissingMainMethod() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main extends Foo {}" +
                "class Foo {}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(1, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of extending built-in String, TextIO, and System classes
     *
     * @throws Exception
     */
    @Test
    public void testExtendBuiltIn() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class A extends String{}" +
                "class B extends TextIO{}" +
                "class C extends Sys{}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(4, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Missing Main class");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "B cannot extend TextIO. TextIO is not extendable.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "C cannot extend Sys. Sys is not extendable.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "A cannot extend String. String is not extendable.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of reserved words used as identifiers
     *
     * @throws Exception
     */
    @Test
    public void testReservedWords() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "int null;" +
                    "int void;" +
                    "int super;" +
                    "int this;" +
                    "int boolean;" +
                    "int int;" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(7, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "null is a reserved keyword.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "void is a reserved keyword.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "super is a reserved keyword.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(4).getMessage(),
                    "this is a reserved keyword.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(5).getMessage(),
                    "boolean is a reserved keyword.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(6).getMessage(),
                    "int is a reserved keyword.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of an inheritance tree having loops
     *
     * @throws Exception
     */
    @Test
    public void testInheritanceLoop() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class A extends B {}" +
                "class B extends A {}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(3, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Missing Main class");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "B is not a descendant of Object.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "A is not a descendant of Object.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of type compatibility
     *
     * @throws Exception
     */
    @Test
    public void testTypeCompatibility() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "boolean x=3;" +
                        "int[] a = new boolean[3];" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Incompatible types. Expected: boolean Actual: int");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Incompatible types. Expected: int[] Actual: boolean[]");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a type not existing
     *
     * @throws Exception
     */
    @Test
    public void testTypeValidity() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "foo x;" +
                    "Bar bar() {}" +
                    "void test(Foo y) {}" +
                    "Baz baz = 5;" +
                    "A[] arr = new A[2];" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(6, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Invalid type: foo");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "Invalid type: Bar");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "Invalid type: Foo");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(4).getMessage(),
                    "Invalid type: Baz");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(5).getMessage(),
                    "Invalid type: A[]");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a variable not existing
     *
     * @throws Exception
     */
    @Test
    public void testVariableValidity() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "int y = this.x;" +
                        "y=false;" +
                        "z = 5;" +
                        "a = int[2];" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(6, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "x has not been declared.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Incompatible types. Expected: int Actual: null");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "Incompatible types. Expected: int Actual: boolean");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "z has not been declared.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(4).getMessage(),
                    "int has not been declared.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(5).getMessage(),
                    "a has not been declared.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of an invalid object
     *
     * @throws Exception
     */
    @Test
    public void testObjectValidity() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "new Foo();" +
                        "Bar.x();" +
                        "dog instanceof Animal;" +

                        "Main main = new Main();" +
                        "Object o = (Foo)(main);" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(9, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                "Invalid object type: Foo");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                "Bar has not been declared.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                "Invalid object type: null");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                "dog has not been declared.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(4).getMessage(),
                "Invalid object type: Animal");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(5).getMessage(),
                "Invalid object type: null");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(6).getMessage(),
                "Expected: assignments, increment/decrement operations, method calls, " +
                    "or new object constructions. Actual: InstanceofExpr");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(7).getMessage(),
                "Invalid object type: Foo");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(8).getMessage(),
                    "Incompatible types. Expected: Object Actual: null");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a field declared twice with same name in overlapping scopes
     *
     * @throws Exception
     */
    @Test
    public void testFieldDeclared() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "int x;" +
                    "boolean x;" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Field: x has been declared.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a variable defined more than once in the same scope
     *
     * @throws Exception
     */
    @Test
    public void testVariableDeclared() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "int x = 3;" +
                        "boolean x = true;" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Variable 'x' is already defined in the scope.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Incompatible types. Expected: int Actual: boolean");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a method with two parameters of the same name
     * @throws Exception
     */
    @Test
    public void testDuplicateParameters() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() { }" +
                    "void foo(int a, boolean a) { }" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(1, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Variable 'a' is already defined in the scope.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a method not existing
     *
     * @throws Exception
     */
    @Test
    public void testMethodValidity() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "foo();" +
                        "this.bar();" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Cannot find foo().");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Cannot find bar().");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of returning a value in a void method
     *
     * @throws Exception
     */
    @Test
    public void testReturnVoidMethod() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "return 5;" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(1, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Cannot return a value from a method with void result type.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a non-void method with no return value
     *
     * @throws Exception
     */
    @Test
    public void testNoReturnMethod() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "int foo() {}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Missing return statement.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of the last statement of a non-void method not being a return
     *
     * @throws Exception
     */
    @Test
    public void testMethodReturn() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "int foo() {" +
                        "if(true) {return 5;}" +
                        "else{ foo(); }" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Last statement of a non-void method must be a return statement.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of the return value not matching the method's return type
     *
     * @throws Exception
     */
    @Test
    public void testMethodReturnType() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "int foo() {" +
                        "return true;" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e){
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Incompatible types. Expected: int Actual: boolean");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of calling a method with incorrect number or type of parameters
     *
     * @throws Exception
     */
    @Test
    public void testParams() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main{" +
                    "void foo(int x) {}" +
                    "void main() {" +
                        "foo(); " +
                        "foo(true);" +
                        "this.foo(5,3);" +
                        "this.foo(\"foo\");" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(4, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Expected 1 parameters. Received: 0 parameters");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Incompatible types. Expected: int Actual: boolean");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "Expected 1 parameters. Received: 2 parameters");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "Incompatible types. Expected: int Actual: String");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of conditional statement not performed on boolean
     *
     * @throws Exception
     */
    @Test
    public void testBooleanConditional() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "if(5) {}" +
                        "if(\"foo\") {}" +
                        "while(5) {}" +
                        "while(\"foo\") {}" +
                        "for(;5;) {}" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(5, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Incompatible types. Expected: boolean Actual: int");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Incompatible types. Expected: boolean Actual: String");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "Incompatible types. Expected: boolean Actual: int");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "Incompatible types. Expected: boolean Actual: String");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(4).getMessage(),
                    "Incompatible types. Expected: boolean Actual: int");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of invalid binary equality expressions
     *
     * @throws Exception
     */
    @Test
    public void testBinaryEqualityExpr() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "5 == true;" +
                        "false != \"foo\";" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e){
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(4, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                "Incompatible types: int, boolean");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                "Expected: assignments, increment/decrement operations, method calls, " +
                    "or new object constructions. Actual: BinaryCompEqExpr");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                "Incompatible types: boolean, String");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                "Expected: assignments, increment/decrement operations, method calls, " +
                    "or new object constructions. Actual: BinaryCompNeExpr");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of invalid binary comparison expressions
     *
     * @throws Exception
     */
    @Test
    public void testBinaryCompExpr() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "if(5<true) {}" +
                        "if(true<=5) {}" +
                        "if(\"foo\">5) {}" +
                        "if(5>=\"foo\"){}" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(4, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Operands of wrong type. Expected: int, int Actual: int, boolean");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Operands of wrong type. Expected: int, int Actual: boolean, int");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "Operands of wrong type. Expected: int, int Actual: String, int");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "Operands of wrong type. Expected: int, int Actual: int, String");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of invalid binary arithmetic expressions
     *
     * @throws Exception
     */
    @Test
    public void testBinaryArithExpr() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "int x = 5+true;" +
                        "int y = true - 5;" +
                        "int i = \"foo\" * 5;" +
                        "int j = 5 / \"foo\";" +
                        "int k = true % false;" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(5, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Operands of wrong type. Expected: int, int Actual: int, boolean");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Operands of wrong type. Expected: int, int Actual: boolean, int");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "Operands of wrong type. Expected: int, int Actual: String, int");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "Operands of wrong type. Expected: int, int Actual: int, String");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(4).getMessage(),
                    "Operands of wrong type. Expected: int, int " +
                            "Actual: boolean, boolean");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of invalid binary logical expressions
     *
     * @throws Exception
     */
    @Test
    public void testBinaryLogicExpr() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "if(5 && true) {}" +
                        "if(5 || 5) {}" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Operands of wrong type. Expected: boolean, boolean " +
                            "Actual: int, boolean");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Operands of wrong type. Expected: boolean, boolean " +
                            "Actual: int, int");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of invalid unary negation expressions
     *
     * @throws Exception
     */
    @Test
    public void testUnaryNegExpr() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "int x = -true;" +
                        "int y = -\"hi\";" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Operand must be of type int");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Operand must be of type int");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of invalid unary NOT expressions
     *
     * @throws Exception
     */
    @Test
    public void testUnaryNotExpr() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "if(!5) {}" +
                        "if(!\"foo\") {}" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Operand must be of type boolean");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Operand must be of type boolean");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of incrementing and decrementing a non-variable expression or int
     *
     * @throws Exception
     */
    @Test
    public void testIncrDecr() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "int x = true++;" +
                        "String y = \"foo\"; " +
                        "y--;" +
                    "}" +
                "}"
        );


        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Expected VarExpr or ArrayExpr. Received: ConstBooleanExpr");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Incompatible types. Expected: int Actual: String");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of an invalid cast
     *
     * @throws Exception
     */
    @Test
    public void testCasting() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {}" +
                "class Foo {" +
                    "Main main = new Main();" +
                    "Foo foo = (Foo)(main);" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "void main() was not found.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Cannot cast Main to Foo.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a break statement not in a loop
     *
     * @throws Exception
     */
    @Test
    public void testBreak() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "if(true) {break;}" +
                    "}" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(1, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Break statement must be in loops.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of invalid reference for VarExpr and ArrayExpr
     *
     * @throws Exception
     */
    @Test
    public void testInvalidReference() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "String foo = \"a\";" +
                        "int[] intArr = new int[1];" +
                        "foo.bar;" +
                        "intArr.bar;" +
                    "} " +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(4, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "bar not found.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Expected: assignments, increment/decrement operations, method " +
                            "calls, or new object constructions. Actual: VarExpr");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "Expect .length when 'intArr' is type []");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "Expected: assignments, increment/decrement operations, method " +
                            "calls, or new object constructions. Actual: VarExpr");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of invalid type of expr in expr statement
     * @throws Exception
     */
    @Test
    public void testInvalidExprStmt() throws Exception{
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {" +
                        "String a = \"s\";" +
                        "1 + 3;" +
                        "a instanceof String;" +
                        "a;" +
                        "true;" +
                        "1;" +
                    "}" +
                "}"
        );
        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(5, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Expected: assignments, increment/decrement operations, method calls, " +
                            "or new object constructions. Actual: BinaryArithPlusExpr");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Expected: assignments, increment/decrement operations, method calls, " +
                            "or new object constructions. Actual: InstanceofExpr");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(2).getMessage(),
                    "Expected: assignments, increment/decrement operations, method calls, " +
                            "or new object constructions. Actual: VarExpr");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(3).getMessage(),
                    "Expected: assignments, increment/decrement operations, method calls, " +
                            "or new object constructions. Actual: ConstBooleanExpr");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(4).getMessage(),
                    "Expected: assignments, increment/decrement operations, method calls, " +
                            "or new object constructions. Actual: ConstIntExpr");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of defining a class that has been defined
     * @throws Exception
     */
    @Test
    public void testRedefineClass() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() {} " +
                "}" +
                "class Object {}" +
                "class String {}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Class Object is already defined.");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Class String is already defined.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of overriding methods illegally by having different signatures
     * @throws Exception
     */
    @Test
    public void testIllegalMethodOverriding() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main extends Object{" +
                        "void main() {} " +
                        "void toString(String a) {}" +
                        "int clone() { return 1; }" +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(2, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Expected: String toString() Actual: void toString(String)");
            assertEquals(analyzer.getErrorHandler().getErrorList().get(1).getMessage(),
                    "Expected: Object clone() Actual: int clone()");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of doing an illegal type cast (String -> Main)
     *
     * @throws Exception
     */
    @Test
    public void testIllegalCastExpr() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main {" +
                    "void main() { " +
                        "String s = \"s\";" +
                        "Main m = (Main)(s);" +
                    "} " +
                "}"
        );

        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            assertEquals(e.getMessage(), "Bantam semantic analyzer found errors.");
            assertEquals(1, analyzer.getErrorHandler().getErrorList().size());
            assertEquals(analyzer.getErrorHandler().getErrorList().get(0).getMessage(),
                    "Cannot cast String to Main.");
        }
        assertTrue(thrown);
    }

    /**
     * tests the case of a legal Bantam Java Program
     *
     * @throws Exception
     */
    @Test
    public void testLegalProgram() throws Exception {
        boolean thrown = false;
        SemanticAnalyzer analyzer = getSemanticAnalyzer(
                "class Main extends Bar{ int i = 3; " +
                    "int foo(){ String s = \"s\"; return 2; }" +
                    "void bar(String a){}" +
                "}" +
                "class Bar { int i = 3; " +
                    "void main() { String i = \"4\"; foo(); }" +
                    "int foo(){ return 1; }" +
                "}" +
                "class Foo extends Main {" +
                    "boolean[] boolArray = new boolean[1];" +
                    "String s = \"String\";" +
                    "int idx;" +
                    "" +
                    "int foo(){ return 3; }" +
                    "void bar(String a){" +
                        "super.foo();" +
                        "this.s.toString();" +
                        "this.s = \"s\";" +
                        "super.i = 5;" +
                    "}" +
                    "void baz( int i ){" +
                        "int[] intArr = new int[3];" +
                        "intArr[2] = 7;" +
                        "this.boolArray[1] = true;" +
                        "i = intArr.length;" +
                        "" +
                        "for(idx = 0; idx < 0; idx++){" +
                            "if( idx < 0 ){ break; }" +
                        "}" +
                        "while ( idx != 0 ){ " +
                            "intArr[0]++;" +
                            "idx--;" +
                        "}" +
                    "}" +
                "}"
        );
        try {
            analyzer.analyze();
        }
        catch (Exception e) {
            thrown = true;
            for (ErrorHandler.Error err : analyzer.getErrorHandler().getErrorList()) {
                System.out.println(err.getMessage());
            }
        }
        assertFalse(thrown);
    }
}