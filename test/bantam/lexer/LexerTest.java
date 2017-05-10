/*
 * File: LexerTest.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 3
 * Date: March 11, 2017
 */

package bantam.lexer;

import java_cup.runtime.Symbol;
import org.junit.BeforeClass;
import org.junit.Test;

import java.io.StringReader;

import static org.junit.Assert.assertEquals;

/*
 * File: LexerTest.java
 * Author: djskrien
 * Date: 1/8/17
 */
public class LexerTest
{
    @BeforeClass
    public static void begin() {
        System.out.println("begin");
    }

    /**
     * Helper method: returns the name of the next token of the lexer
     * @param lexer Lexer generating the tokens
     * @return String name of the next token
     * @throws Exception
     */
    private static String getNextTokenName(Lexer lexer) throws Exception{
        Symbol token = lexer.next_token();
        return ((Token)token.value).getName();
    }

    /**
     * Tests lexer on a short Bantam Java class with the following content
     * @throws Exception
     */
//        /*Bantam Java class*/
//        class foo{
//            String s = "bar";
//            int 3int = 3;
//            //Prints out "bar"
//            System.out.println(s);
//        }
    @Test
    public void shortProgramTest() throws Exception{
        String program = "/*Bantam Java class*/\n";
        program += "class foo{\n";
        program += "\tString s = \"bar\";\n";
        program += "\tint 3int = 3;\n";
        program += "\t//Prints out \"bar\"\n";
        program += "\tSystem.out.println(s);\n}";
        Lexer lexer = new Lexer(new StringReader(program));
        assertEquals("CLASS", getNextTokenName(lexer));
        assertEquals("foo", getNextTokenName(lexer));
        assertEquals("{", getNextTokenName(lexer));
        assertEquals("String", getNextTokenName(lexer));
        assertEquals("s", getNextTokenName(lexer));
        assertEquals("=", getNextTokenName(lexer));
        assertEquals("\"bar\"", getNextTokenName(lexer));
        assertEquals(";", getNextTokenName(lexer));
        assertEquals("int", getNextTokenName(lexer));
        assertEquals("Illegal ID", getNextTokenName(lexer));
        assertEquals("=", getNextTokenName(lexer));
        assertEquals("3", getNextTokenName(lexer));
        assertEquals(";", getNextTokenName(lexer));
        assertEquals("System", getNextTokenName(lexer));
        assertEquals(".", getNextTokenName(lexer));
        assertEquals("out", getNextTokenName(lexer));
        assertEquals(".", getNextTokenName(lexer));
        assertEquals("println", getNextTokenName(lexer));
        assertEquals("(", getNextTokenName(lexer));
        assertEquals("s", getNextTokenName(lexer));
        assertEquals(")", getNextTokenName(lexer));
        assertEquals(";", getNextTokenName(lexer));
        assertEquals("}", getNextTokenName(lexer));
    }

    /**
     * tests the class token
     * @throws Exception
     */
    @Test
    public void classToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("class"));
        assertEquals("CLASS", getNextTokenName(lexer));
    }

    /**
     * tests the single line comment token
     * @throws Exception
     */
    @Test
    public void singleLineCommentToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("foo //bar\n baz"));
        assertEquals("foo", getNextTokenName(lexer));
        assertEquals("baz", getNextTokenName(lexer));
    }

    /**
     * tests the multi line comment token
     * @throws Exception
     */
    @Test
    public void multiLineCommentToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("/*Line 1*/ /*Line 2\nLine 3*/"));
        assertEquals("EOF", getNextTokenName(lexer));
    }

    /**
     * tests if a multiline comment is unterminated
     * @throws Exception
     */
    @Test
    public void unterminatedCommentToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("/*Line 1 \nLine 2*//*Unterminated"));
        assertEquals("Unterminated multiline comment.", getNextTokenName(lexer));
    }

    /**
     * tests the sting constant token
     * checks if string constant spans multiple lines,
     * if it is over 5000 characters long,
     * and if it is unterminated
     * @throws Exception
     */
    @Test
    public void stringConstantToken() throws Exception {
        String s = "\"Regular line.\" \"Multi-line \n string\"";
        s += " \"" + String.format("%5000s", "over 5000 characters") + "\"";
        s += " \"Unterminated string";
        Lexer lexer = new Lexer(new StringReader(s));
        assertEquals("\"Regular line.\"", getNextTokenName(lexer));
        assertEquals("String constant spanning multiple lines.", getNextTokenName(lexer));
        assertEquals("String constant over 5000 characters.", getNextTokenName(lexer));
        assertEquals("Unterminated string constant.", getNextTokenName(lexer));
    }

    /**
     * tests the single quote token
     * @throws Exception
     */
    @Test
    public void singleQuoteToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("'\\0' '' '\\n'"));
        assertEquals("Unsupported escape character within a string.", getNextTokenName(lexer));
        assertEquals("''", getNextTokenName(lexer));
        assertEquals("'\\n'", getNextTokenName(lexer));
    }

    /**
     * tests the id token
     * @throws Exception
     */
    @Test
    public void idToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("Foo bar_baz5 3name __3 3_3"));
        assertEquals("Foo", getNextTokenName(lexer));
        assertEquals("bar_baz5", getNextTokenName(lexer));
        assertEquals("Illegal ID", getNextTokenName(lexer));
        assertEquals("Illegal ID", getNextTokenName(lexer));
        assertEquals("Illegal ID", getNextTokenName(lexer));
    }

    /**
     * tests the integer string token
     * checks if the integer constant is too big (must be between 0 and (2^31-1)
     * @throws Exception
     */
    @Test
    public void integerStringToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("729 2147483649"));
        assertEquals("729", getNextTokenName(lexer));
        assertEquals("Integer constant too big.", getNextTokenName(lexer));
    }

    /**
     * tests the left and right brace tokens
     * @throws Exception
     */
    @Test
    public void lrBracesToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("{}"));
        assertEquals("{", getNextTokenName(lexer));
        assertEquals("}", getNextTokenName(lexer));
    }

    /**
     * tests the left and right square brace tokens
     * @throws Exception
     */
    @Test
    public void lrSqbraceToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("[]"));
        assertEquals("[", getNextTokenName(lexer));
        assertEquals("]", getNextTokenName(lexer));
    }

    /**
     * tests the left and right parentheses tokens
     * @throws Exception
     */
    @Test
    public void lrParenToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("()"));
        assertEquals("(", getNextTokenName(lexer));
        assertEquals(")", getNextTokenName(lexer));
    }

    /**
     * tests the while token
     * @throws Exception
     */
    @Test
    public void whileToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("while"));
        assertEquals("WHILE", getNextTokenName(lexer));
    }

    /**
     * tests the for token
     * @throws Exception
     */
    @Test
    public void forToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("for"));
        assertEquals("FOR", getNextTokenName(lexer));
    }

    /**
     * tests the instanceof token
     * @throws Exception
     */
    @Test
    public void instanceofToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("instanceof"));
        assertEquals("INSTANCEOF", getNextTokenName(lexer));
    }

    /**
     * tests the not token
     * @throws Exception
     */
    @Test
    public void notToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("!"));
        assertEquals("!", getNextTokenName(lexer));
    }

    /**
     * tests the and token
     * @throws Exception
     */
    @Test
    public void andToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("&&"));
        assertEquals("&&", getNextTokenName(lexer));
    }

    /**
     * tests the or token
     * @throws Exception
     */
    @Test
    public void orToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("||"));
        assertEquals("||", getNextTokenName(lexer));
    }

    /**
     * tests the if token
     * @throws Exception
     */
    @Test
    public void ifToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("if"));
        assertEquals("IF", getNextTokenName(lexer));
    }

    /**
     * tests the return token
     * @throws Exception
     */
    @Test
    public void returnToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("return"));
        assertEquals("RETURN", getNextTokenName(lexer));
    }

    /**
     * tests the new token
     * @throws Exception
     */
    @Test
    public void newToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("new"));
        assertEquals("NEW", getNextTokenName(lexer));
    }

    /**
     * tests the break token
     * @throws Exception
     */
    @Test
    public void breakToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("break"));
        assertEquals("BREAK", getNextTokenName(lexer));
    }

    /**
     * tests the else token
     * @throws Exception
     */
    @Test
    public void elseToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("else"));
        assertEquals("ELSE", getNextTokenName(lexer));
    }

    /**
     * tests the extends token
     * @throws Exception
     */
    @Test
    public void extendsToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("extends"));
        assertEquals("EXTENDS", getNextTokenName(lexer));
    }

    /**
     * tests the boolean constant token
     * @throws Exception
     */
    @Test
    public void booleanConstantToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("true"));
        assertEquals("true", getNextTokenName(lexer));
    }

    /**
     * tests the integer constant token
     * @throws Exception
     */
    @Test
    public void intConstantToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("20"));
        assertEquals("20", getNextTokenName(lexer));
    }

    /**
     * tests the increment token
     * @throws Exception
     */
    @Test
    public void incrToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("++"));
        assertEquals("++", getNextTokenName(lexer));
    }

    /**
     * tests the decrement token
     * @throws Exception
     */
    @Test
    public void decrToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("--"));
        assertEquals("--", getNextTokenName(lexer));
    }

    /**
     * tests the times token
     * @throws Exception
     */
    @Test
    public void timesToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("*"));
        assertEquals("*", getNextTokenName(lexer));
    }

    /**
     * tests the divide token
     * @throws Exception
     */
    @Test
    public void divideToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("/"));
        assertEquals("/", getNextTokenName(lexer));
    }

    /**
     * tests the plus token
     * @throws Exception
     */
    @Test
    public void plusToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("+"));
        assertEquals("+", getNextTokenName(lexer));
    }

    /**
     * tests the minus token
     * @throws Exception
     */
    @Test
    public void minusToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("-"));
        assertEquals("-", getNextTokenName(lexer));
    }

    /**
     * tests the modulus token
     * @throws Exception
     */
    @Test
    public void modulusToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("%"));
        assertEquals("%", getNextTokenName(lexer));
    }

    /**
     * tests the less than or equal token
     * @throws Exception
     */
    @Test
    public void leqToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("<="));
        assertEquals("<=", getNextTokenName(lexer));
    }

    /**
     * tests the greater than or equal token
     * @throws Exception
     */
    @Test
    public void geqToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader(">="));
        assertEquals(">=", getNextTokenName(lexer));
    }

    /**
     * tests the not equal token
     * @throws Exception
     */
    @Test
    public void neToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("!="));
        assertEquals("!=", getNextTokenName(lexer));
    }

    /**
     * tests the equal token
     * @throws Exception
     */
    @Test
    public void eqToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("=="));
        assertEquals("==", getNextTokenName(lexer));
    }

    /**
     * tests the less than token
     * @throws Exception
     */
    @Test
    public void ltToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("<"));
        assertEquals("<", getNextTokenName(lexer));
    }

    /**
     * tests the greater than token
     * @throws Exception
     */
    @Test
    public void gtToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader(">"));
        assertEquals(">", getNextTokenName(lexer));
    }

    /**
     * tests the assign token
     * @throws Exception
     */
    @Test
    public void assignToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("="));
        assertEquals("=", getNextTokenName(lexer));
    }

    /**
     * tests the semicolon token
     * @throws Exception
     */
    @Test
    public void semiToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader(";"));
        assertEquals(";", getNextTokenName(lexer));
    }

    /**
     * tests the comma token
     * @throws Exception
     */
    @Test
    public void commaToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader(","));
        assertEquals(",", getNextTokenName(lexer));
    }

    /**
     * tests the dot token
     * @throws Exception
     */
    @Test
    public void dotToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("."));
        assertEquals(".", getNextTokenName(lexer));
    }

    /**
     * tests the left shift token
     * @throws Exception
     */
    @Test
    public void leftShiftToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("<<"));
        assertEquals("<<", getNextTokenName(lexer));
    }

    /**
     * tests the signed right shift token
     * @throws Exception
     */
    @Test
    public void signedRightShiftToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader(">>"));
        assertEquals(">>", getNextTokenName(lexer));
    }

    /**
     * tests the signed right shift token
     * @throws Exception
     */
    @Test
    public void unsignedRightShiftToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader(">>>"));
        assertEquals(">>>", getNextTokenName(lexer));
    }

    /**
     * tests the bitwise and token
     * @throws Exception
     */
    @Test
    public void bitAndToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("&"));
        assertEquals("&", getNextTokenName(lexer));
    }

    /**
     * tests the bitwise or token
     * @throws Exception
     */
    @Test
    public void bitOrToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("|"));
        assertEquals("|", getNextTokenName(lexer));
    }

    /**
     * tests the bitwise xor token
     * @throws Exception
     */
    @Test
    public void bitXorToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("^"));
        assertEquals("^", getNextTokenName(lexer));
    }

    /**
     * tests the bitwise not token
     * @throws Exception
     */
    @Test
    public void bitNotToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("~"));
        assertEquals("~", getNextTokenName(lexer));
    }

    /**
     * tests the plus equals token
     * @throws Exception
     */
    @Test
    public void plusEqualsToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("+="));
        assertEquals("+=", getNextTokenName(lexer));
    }

    /**
     * tests the minus equals token
     * @throws Exception
     */
    @Test
    public void minusEqualsToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("-="));
        assertEquals("-=", getNextTokenName(lexer));
    }

    /**
     * tests the times equals token
     * @throws Exception
     */
    @Test
    public void timesEqualsToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("*="));
        assertEquals("*=", getNextTokenName(lexer));
    }

    /**
     * tests the divide equals token
     * @throws Exception
     */
    @Test
    public void divideEqualsToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("/="));
        assertEquals("/=", getNextTokenName(lexer));
    }

    /**
     * tests the mod equals token
     * @throws Exception
     */
    @Test
    public void modEqualsToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("%="));
        assertEquals("%=", getNextTokenName(lexer));
    }

    /**
     * tests the unsupported character token
     * @throws Exception
     */
    @Test
    public void unsupportedCharacterToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader("?"));
        assertEquals("Unsupported character.", getNextTokenName(lexer));
    }

    /**
     * tests the end of file token
     * @throws Exception
     */
    @Test
    public void EOFToken() throws Exception {
        Lexer lexer = new Lexer(new StringReader(""));
        assertEquals("EOF", getNextTokenName(lexer));
    }
}