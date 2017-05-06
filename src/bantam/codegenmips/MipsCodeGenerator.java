/*
 * File: MipsCodeGenerator.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 4B
 * Date: April 15, 2017
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

package bantam.codegenmips;

import bantam.ast.Method;
import bantam.util.ClassTreeNode;
import javafx.util.Pair;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.*;

/**
 * The <tt>MipsCodeGenerator</tt> class generates mips assembly code
 * targeted for the SPIM emulator.  Note: this code will only run
 * under SPIM.
 * <p/>
 * This class is incomplete and will need to be implemented by the student.
 */
public class MipsCodeGenerator {
    /**
     * Root of the class hierarchy tree
     */
    private ClassTreeNode root;

    /**
     * Print stream for output assembly file
     */
    private PrintStream out;

    /**
     * Assembly support object (using Mips assembly support)
     */
    private MipsSupport assemblySupport;

    /**
     * Boolean indicating whether garbage collection is enabled
     */
    private boolean gc = false;

    /**
     * Boolean indicating whether optimization is enabled
     */
    private boolean opt = false;

    /**
     * Boolean indicating whether debugging is enabled
     */
    private boolean debug = false;

    /**
     * Maps class names to ClassTreeNode objects describing the class
     */
    private Hashtable<String, ClassTreeNode> classMap;

    /**
     * A list of all ClassTreeNodes in the program generated in preorder
     */
    private List<ClassTreeNode> classList;

    /**
     * A list of all String constants in the program
     */
    private List<String> stringConstList;

    /**
     * MipsCodeGenerator constructor
     *
     * @param root    root of the class hierarchy tree
     * @param outFile filename of the assembly output file
     * @param gc      boolean indicating whether garbage collection is enabled
     * @param opt     boolean indicating whether optimization is enabled
     * @param debug   boolean indicating whether debugging is enabled
     */
    public MipsCodeGenerator(ClassTreeNode root, String outFile,
                             boolean gc, boolean opt, boolean debug) {
        this.root = root;
        this.gc = gc;
        this.opt = opt;
        this.debug = debug;
        this.classMap = root.getClassMap();

        //generate a list of ClassTreeNodes in the program in preorder
        classList = new ArrayList<>();
        genClassListPreorder(this.root);

        try {
            out = new PrintStream(new FileOutputStream(outFile));
            assemblySupport = new MipsSupport(out);
        } catch (IOException e) {
            // if don't have permission to write to file then report an error and exit
            System.err.println("Error: don't have permission to write to file '" +
                    outFile + "'");
            System.exit(1);
        }
    }

    /**
     * Generate assembly file
     * <p/>
     * In particular, will need to do the following:
     * 1 - start the data section
     * 2 - generate data for the garbage collector
     * 3 - generate string constants
     * 4 - generate class name table
     * 5 - generate object templates
     * 6 - generate dispatch tables
     * 7 - start the text section
     * 8 - generate initialization subroutines
     * 9 - generate user-defined methods
     * See the lab manual for the details of each of these steps.
     */
    public void generate() {
        //start the data section
        generateHeader();
        startDataSection();

        //generate data for the garbage collector
        genGCData();

        //generate string constants
        genStringConstLabels();
        genFilenameLabels();
        genClassLabels();

        //generate class name table
        genClassNameTable();

        //generate object templates
        genObjTemp();

        //generate dispatch tables
        genDispatchGlobals();
        genDispatchTables();

        //start the text section
        startTextSection();

        //generate initialization subroutines
        genClassInit();

        //generate user-defined methods
        genUserMethods();
    }

    /**
     * Generates a map of classes to their unique identifier
     */
    private void genClassListPreorder(ClassTreeNode parent) {
        //add Object and builtin classes to our list
        if(classList.size() == 0) {
            classList.add(classMap.get("Object"));
            classList.add(classMap.get("String"));
            classList.add(classMap.get("Sys"));
            classList.add(classMap.get("TextIO"));
            classList.add(classMap.get("Note"));
            classList.add(classMap.get("MidiHandler"));
        }
        else {
            classList.add(parent);
        }

        parent.getChildrenList().forEachRemaining(classTreeNode -> {
            //add non-builtin classes
            if(!classTreeNode.isBuiltIn()){
                genClassListPreorder(classTreeNode);
            }
        });
    }

    /**
     * Generate the file header of the output file
     */
    private void generateHeader() {
        Set<String> filenameSet = new HashSet<>();
        assemblySupport.genComment("Author: Tiffany Lam, Jenny Lin");
        assemblySupport.genComment("Date: May 10, 2017");
        assemblySupport.genComment("Compiled from sources: ");
        classList.forEach(classTreeNode -> {
            // if the class is not a built-in class, add it to the sources in header
            if(!classTreeNode.isBuiltIn()) {
                String filename = classTreeNode.getASTNode().getFilename();
                if(!filenameSet.contains(filename)) {
                    filenameSet.add(filename);
                    assemblySupport.genComment("\t" + filename);
                }
            }
        });

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Starts the data section
     */
    private void startDataSection(){
        assemblySupport.genDataStart();

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Generate data for the garbage collector
     */
    private void genGCData() {
        assemblySupport.genComment("Garbage collection flag");

        assemblySupport.genLabel("gc_flag");
        if(gc) {
            assemblySupport.genWord("1");
        }
        else {
            assemblySupport.genWord("0");
        }

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Generate label for the provided class name
     *
     * @param labelName String of label prefix
     * @param stringVal String value to generate label for
     */
    private void genStringLabel(String labelName, String stringVal) {
        //round off name length to closes byte that can hold the name
        int nameByteLength = ((getCharCount(stringVal) + 4) / 4) * 4;

        assemblySupport.genLabel(labelName);
        assemblySupport.genWord("1");
        assemblySupport.genWord(Integer.toString(16 + nameByteLength));
        assemblySupport.genWord("String_dispatch_table");
        assemblySupport.genWord(Integer.toString((getCharCount(stringVal))));
        assemblySupport.genAscii(stringVal);
    }

    /**
     * Generate labels for all string constants
     */
    private void genStringConstLabels() {
        StringConstantsVisitor visitor = new StringConstantsVisitor();

        assemblySupport.genComment("String Constants");

        //visits all classes for string constants
        classList.forEach(classTreeNode ->
                visitor.registerStringsInClass(classTreeNode.getASTNode()));

        //generate labels for all string constants
        stringConstList = visitor.getStringConstantList();
        for(int i = 0; i < stringConstList.size(); i++){
            //removing first and last " since string consts are
            //already in the format: "String_Const"
            String stringConst = stringConstList.get(i);
            genStringLabel("String_const_" + i,
                    stringConst.substring(1, stringConst.length()-1));
        }

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Returns the number of characters in the string
     * @param ascii String of
     * @return
     */
    private int getCharCount(String ascii) {
        int charCount = 0;
        for (int i = 0; i < ascii.length(); i++) {
            if (ascii.charAt(i) == '\\') {
                i++;
            }
            charCount++;
        }
        return charCount;
    }

    /**
     * Generate labels for class names
     */
    private void genClassLabels() {
        classList.forEach(classTreeNode ->
                genStringLabel("class_name_" + classList.indexOf(classTreeNode),
                        classTreeNode.getName()));

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Generate labels for all file names
     */
    private void genFilenameLabels() {
        ArrayList<String> filenameList = new ArrayList<>();

        classList.forEach(classTreeNode -> {
            String filename = classTreeNode.getASTNode().getFilename();
            //add a label for the filename if one doesn't already exist
            if(!filenameList.contains(filename)){
                genStringLabel(assemblySupport.getLabel(), filename);
                filenameList.add(filename);
            }
        });

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Generate class name table
     */
    private void genClassNameTable() {
        assemblySupport.genLabel("class_name_table");
        for(int i = 0; i < classList.size(); i++){
            assemblySupport.genWord("class_name_" + i);
        }

        classList.forEach(classTreeNode ->
            assemblySupport.genGlobal(classTreeNode.getName() + "_template"));

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Generate object templates
     */
    private void genObjTemp() {
        MemberVisitor visitor = new MemberVisitor();
        classList.forEach(classTreeNode -> {
            //sets up the variable and method symbol tables
            visitor.populateSymbolTables(classTreeNode);

            int numFields = classTreeNode.getVarSymbolTable().getSize();
            String className = classTreeNode.getName();

            assemblySupport.genLabel(className + "_template");
            assemblySupport.genWord(Integer.toString(classList.indexOf(classTreeNode)));
            assemblySupport.genWord(Integer.toString(12 + 4 * numFields));
            assemblySupport.genWord(className + "_dispatch_table");
            for(int i = 0; i < numFields; i++) {
                assemblySupport.genWord("0");
            }
        });

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Generate globals for dispatch tables
     */
    private void genDispatchGlobals() {
        classMap.keySet().forEach(className ->
            assemblySupport.genGlobal(className + "_dispatch_table"));

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Generate dispatch tables
     */
    private void genDispatchTables() {
        classList.forEach(classTreeNode -> {
            String className = classTreeNode.getName();
            assemblySupport.genLabel(className + "_dispatch_table");
            Map<String, Pair<String, Method>> methodToClassMapping = new MethodVisitor()
                    .getMethodMapping(root.getClassMap().get(className));
            methodToClassMapping.forEach((methodName, classMethodPair) -> {
                assemblySupport.genWord(classMethodPair.getKey() + "." + methodName);
            });
        });

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Starts the text section
     */
    private void startTextSection(){
        assemblySupport.genTextStart();

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Generate initialization subroutines
     */
    private void genClassInit() {
        InitCodeGenVisitor visitor = new InitCodeGenVisitor();
        classList.forEach(classTreeNode -> {
            assemblySupport.genLabel(classTreeNode.getName() + "_init");
            genInitProlog();

            ClassTreeNode parent = classTreeNode.getParent();
            // all classes aside from the Object class
            if(parent != null){
                assemblySupport.genComment("call parent's init");
                assemblySupport.genDirCall(parent.getName() + "_init");
                visitor.genFieldInit(this, assemblySupport, classTreeNode, stringConstList);
            }

            assemblySupport.genComment("copy class ptr to $v0");
            assemblySupport.genMove(assemblySupport.getResultReg(), "$a0");

            genInitEpilog();
            assemblySupport.genRetn();
        });

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    /**
     * Generate user-defined methods
     */
    private void genUserMethods() {
        classList.forEach(classTreeNode -> {
            // if the class is not a built-in class, add it to the sources in header
            if(!classTreeNode.isBuiltIn()) {
                CodeGenVisitor visitor = new CodeGenVisitor(this, assemblySupport,
                        classTreeNode);
                classTreeNode.getASTNode().accept(visitor);
            }
        });

        //add new line for formatting
        assemblySupport.genNewLine();
    }

    private void genInitProlog(){
        assemblySupport.genComment("Starting prolog for init");
        assemblySupport.genAdd(assemblySupport.getSPReg(), assemblySupport.getSPReg(),
                -8);
        assemblySupport.genStoreWord(assemblySupport.getRAReg(), 0,
                assemblySupport.getSPReg());
        assemblySupport.genStoreWord(assemblySupport.getFPReg(), 4,
                assemblySupport.getSPReg());
    }

    private void genInitEpilog(){
        assemblySupport.genComment("Starting epilog for init");
        assemblySupport.genLoadWord(assemblySupport.getRAReg(), 0,
                assemblySupport.getSPReg());
        assemblySupport.genStoreWord(assemblySupport.getFPReg(), 4,
                assemblySupport.getSPReg());
        assemblySupport.genAdd(assemblySupport.getSPReg(), assemblySupport.getSPReg(),
                8);
    }

    public List<ClassTreeNode> getClassList(){
        return classList;
    }

    public List<String> getStringConstList(){
        return stringConstList;
    }
}
