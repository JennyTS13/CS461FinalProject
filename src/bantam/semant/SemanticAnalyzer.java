/*
 * File: SemanticAnalyzer.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 3
 * Date: March 11, 2017
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

package bantam.semant;

import bantam.ast.*;
import bantam.util.*;
import bantam.visitor.BreakCheckVisitor;
import bantam.visitor.MemberVisitor;
import bantam.visitor.TypeCheckVisitor;

import java.util.*;

/** The <tt>SemanticAnalyzer</tt> class performs semantic analysis.
  * In particular this class is able to perform (via the <tt>analyze()</tt>
  * method) the following tests and analyses: (1) legal inheritence
  * hierarchy (all classes have existing parent, no cycles), (2) 
  * legal class member declaration, (3) there is a correct bantam.Main class
  * and main() method, and (4) each class member is correctly typed.
  * 
  * This class is incomplete and will need to be implemented by the student. 
  * */
public class SemanticAnalyzer {
    /** Root of the AST */
    private Program program;
    
    /** Root of the class hierarchy tree */
    private ClassTreeNode root;
    
    /** Maps class names to ClassTreeNode objects describing the class */
    private Hashtable<String,ClassTreeNode> classMap = new Hashtable<String,ClassTreeNode>();
    
    /** Object for error handling */
    private ErrorHandler errorHandler = new ErrorHandler();
    
    /** Boolean indicating whether debugging is enabled */
    private boolean debug = false;

    /** Maximum number of inherited and non-inherited fields
	 *  that can be defined for any one class */
    private final int MAX_NUM_FIELDS = 1500;

    /** SemanticAnalyzer constructor
      * @param program root of the AST
      * @param debug boolean indicating whether debugging is enabled
      * */
    public SemanticAnalyzer(Program program, boolean debug) {
	this.program = program;
	this.debug = debug;
    }
    
    /** Analyze the AST checking for semantic errors and annotating the tree
      * Also builds an auxiliary class hierarchy tree 
      * @return root of the class hierarchy tree (needed for code generation)
      *
      * Must add code to do the following:
      *   1 - build built-in class nodes in class hierarchy tree (already done)
      *   2 - build and check the class hierarchy tree
      *   3 - build the environment for each class (adding class members only) and check
      *       that members are declared properly
      *   4 - check that the bantam.Main class and main method are declared properly
      *   5 - type check each class member
      * See the lab manual for more details on each of these steps.
      * */
    public ClassTreeNode analyze() {
        // 1 - add built in classes to class tree
        updateBuiltins();

        // 2 - build the class hierarchy tree, set up class parents,
		// check for hierarchy loop
        addUserClasses();
        setClassParents();
        checkClassHierarchy();

		// 3 - build the environment for each class (adding class members only) and check
		// that members are declared properly
		updateClassMembers(root);

		// 4 - check that the bantam.Main class and main method are declared properly
		validateMain();

		// 5 - type check each class member
		typeCheckClasses();

		// Check that all break statements are contained in loops
		breakValidityCheck();

		// Exit scope of symbol tables to reset them
		resetSymbolTables();

		errorHandler.checkErrors();

		return root;
    }

    /**
     * @return the ErrorHandler for this Parser
     */
    public ErrorHandler getErrorHandler() { return errorHandler; }

    /** Add built in classes to the class tree 
      * */
    private void updateBuiltins() {
	// create AST node for object
	Class_ astNode = 
	    new Class_(-1, "<built-in class>", "Object", null, 
		       (MemberList)(new MemberList(-1))
		       .addElement(new Method(-1, "Object", "clone", 
					  		new FormalList(-1),
					      (StmtList)(new StmtList(-1))
					      .addElement(new ReturnStmt(-1, new VarExpr(-1, null, "null")))))
		       .addElement(new Method(-1, "boolean", "equals",
					      (FormalList)(new FormalList(-1))
					      .addElement(new Formal(-1, "Object", "o")),
					      (StmtList)(new StmtList(-1))
					      .addElement(new ReturnStmt(-1,
								  					new ConstBooleanExpr(-1, "false")))))
		       .addElement(new Method(-1, "String", "toString", 
					      new FormalList(-1), 
					      (StmtList)(new StmtList(-1))
					      .addElement(new ReturnStmt(-1,
								  					new VarExpr(-1, null, "null"))))));
	// create a class tree node for object, save in variable root
	root = new ClassTreeNode(astNode, /*built-in?*/true, /*extendable?*/true, classMap);
	// add object class tree node to the mapping
	classMap.put("Object", root);

	// note: String, TextIO, and Sys all have fields that are not shown below.  Because
	// these classes cannot be extended and fields are protected, they cannot be accessed
	// by other classes, so they do not have to be included in the AST.
	
	// create AST node for String
	astNode =
		new Class_(-1, "<built-in class>",
			"String", "Object",
			(MemberList)(new MemberList(-1))
			.addElement(new Field(-1, "int", "length", /*0 by default*/null))
			/* note: str is the character sequence -- no applicable type for a
			character sequence so it is just made an int.  it's OK to
			do this since this field is only accessed (directly) within
			the runtime system */
			.addElement(new Method(-1, "int", "length",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
			.addElement(new ReturnStmt(-1, new ConstIntExpr(-1, "0")))))
			.addElement(new Method(-1, "boolean", "equals",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "Object", "str")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1,
									new ConstBooleanExpr(-1, "false")))))
			.addElement(new Method(-1, "String", "toString",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new VarExpr(-1, null, "null")))))
			.addElement(new Method(-1, "String", "substring",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "int", "beginIndex"))
						.addElement(new Formal(-1, "int", "endIndex")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new VarExpr(-1, null, "null")))))
			.addElement(new Method(-1, "String", "concat",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "String", "str")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new VarExpr(-1, null, "null"))))));
	// create class tree node for String, add it to the mapping
	classMap.put("String", new ClassTreeNode(
			astNode, /*built-in?*/true, /*extendable?*/false, classMap));

	// create AST node for TextIO
	astNode =
	    new Class_(-1, "<built-in class>", 
			"TextIO", "Object",
			(MemberList)(new MemberList(-1))
			.addElement(new Field(-1, "int", "readFD", /*0 by default*/null))
			.addElement(new Field(-1, "int", "writeFD", new ConstIntExpr(-1, "1")))
			.addElement(new Method(-1, "void", "readStdin",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, null))))
			.addElement(new Method(-1, "void", "readFile",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "String", "readFile")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, null))))
			.addElement(new Method(-1, "void", "writeStdout",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, null))))
			.addElement(new Method(-1, "void", "writeStderr",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, null))))
			.addElement(new Method(-1, "void", "writeFile",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "String", "writeFile")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, null))))
			.addElement(new Method(-1, "String", "getString",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new VarExpr(-1, null, "null")))))
			.addElement(new Method(-1, "int", "getInt",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new ConstIntExpr(-1, "0")))))
			.addElement(new Method(-1, "TextIO", "putString",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "String", "str")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new VarExpr(-1, null, "null")))))
			.addElement(new Method(-1, "TextIO", "putInt",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "int", "n")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new VarExpr(-1, null, "null"))))));
	// create class tree node for TextIO, add it to the mapping
	classMap.put("TextIO", new ClassTreeNode(
			astNode, /*built-in?*/true, /*extendable?*/false, classMap));

	// create AST node for Sys
	astNode =
	    new Class_(-1, "<built-in class>",
			"Sys", "Object",
			(MemberList)(new MemberList(-1))
			.addElement(new Method(-1, "void", "exit",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "int", "status")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, null))))
			/* MC: time() and random() requires modifying SPIM to add a time system call
			(note: random() does not need its own system call although it uses the time
			system call).  We have a version of SPIM with this system call available,
			otherwise, just comment out. (For x86 and jvm there are no issues.) */
			.addElement(new Method(-1, "int", "time",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new ConstIntExpr(-1, "0")))))
			.addElement(new Method(-1, "int", "random",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new ConstIntExpr(-1, "0")))))
		       );
	// create class tree node for Sys, add it to the mapping
	classMap.put("Sys", new ClassTreeNode(
			astNode, /*built-in?*/true, /*extendable?*/false, classMap));

	// create AST node for Note
	astNode =
		new Class_(-1, "<built-in class>",
			"Note", "Object",
			(MemberList)(new MemberList(-1))
            .addElement(new Field(-1, "int", "pitch", null))
            .addElement(new Field(-1, "int", "duration", null))
            .addElement(new Field(-1, "int", "instrument", null))
            .addElement(new Field(-1, "int", "volume", null))
			.addElement(new Method(-1, "void", "setNoteAttributes",
            (FormalList)(new FormalList(-1))
            .addElement(new Formal(-1, "String", "notePitch"))
            .addElement(new Formal(-1, "int", "noteOctave"))
            .addElement(new Formal(-1, "int", "noteDuration"))
            .addElement(new Formal(-1, "String", "instrumentName"))
            .addElement(new Formal(-1, "int", "noteVolume")),
            (StmtList)(new StmtList(-1))
            .addElement(new ReturnStmt(-1, null))))
			.addElement(new Method(-1, "int", "getPitch",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new ConstIntExpr(-1, "0")))))
			.addElement(new Method(-1, "int", "getDuration",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new ConstIntExpr(-1, "0")))))
			.addElement(new Method(-1, "int", "getInstrument",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new ConstIntExpr(-1, "0")))))
			.addElement(new Method(-1, "int", "getVolume",
						new FormalList(-1),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, new ConstIntExpr(-1, "0")))))
			);
	// create class tree node for Note, add it to the mapping
	classMap.put("Note", new ClassTreeNode(
	astNode, /*built-in?*/true, /*extendable?*/false, classMap));

	// create AST node for MidiHandler
	astNode =
		new Class_(-1, "<built-in class>",
			"MidiHandler", "Object",
			(MemberList)(new MemberList(-1))
			.addElement(new Method(-1, "void", "play",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "Note", "n")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, null))))
			.addElement(new Method(-1, "void", "rest",
						(FormalList)(new FormalList(-1))
						.addElement(new Formal(-1, "int", "restLength")),
						(StmtList)(new StmtList(-1))
						.addElement(new ReturnStmt(-1, null))))
				);
		// create class tree node for MidiHandler, add it to the mapping
		classMap.put("MidiHandler", new ClassTreeNode(
				astNode, /*built-in?*/true, /*extendable?*/false, classMap));
    }

    /**
     * Adds the classes created by the user to class hierarchy tree
	 * Register an error if the class has already been define
     */
	private void addUserClasses() {
	    program.getClassList().forEach(class_ -> {
	        Class_ newClass = (Class_)class_;
			if(classMap.keySet().contains(newClass.getName())){
				errorHandler.register(2, newClass.getFilename(), newClass.getLineNum(),
						"Class " + newClass.getName() + " is already defined.");
			}
            else {
				classMap.put(newClass.getName(), new ClassTreeNode(
						newClass, /*built-in?*/false, /*extendable?*/true, classMap));
			}
        });
    }

    /**
     * Sets the parent for each class appropriately
	 * Adds error to errorHandler if we're trying to extend a non-extendable class
     */
    private void setClassParents() {
    	List<String> invalidClasses = new ArrayList<>();
        classMap.forEach((className, classTreeNode) -> {
            if(!className.equals("Object")){
				ClassTreeNode parent = classMap.get(classTreeNode.getASTNode().getParent());

				//The parent is an invalid class - doesn't exist in classMap
				if(parent == null){
					errorHandler.register(2, classTreeNode.getASTNode().getFilename(),
							classTreeNode.getASTNode().getLineNum(),
							"Class " + classTreeNode.getASTNode().getParent() +
									" does not exist.");
					invalidClasses.add(className);
				}
				else {
					//If the parent is extendable, extend it, otherwise, add to our error list
					if (parent.isExtendable()) {
						classMap.get(className).setParent(
								classMap.get(classTreeNode.getASTNode().getParent()));
					} else {
						errorHandler.register(2, classTreeNode.getASTNode().getFilename(),
								classTreeNode.getASTNode().getLineNum(),
								className + " cannot extend " + parent.getName() + ". " +
										parent.getName() + " is not extendable.");
						invalidClasses.add(className);
					}
				}
            }
        });
		invalidClasses.forEach(className -> classMap.remove(className));
    }

	/**
	 * Checks that class hierarchy is proper and that there are no loops in the hierarchy
	 */
	private void checkClassHierarchy() {
        List<ClassTreeNode> objectsDescendant = new ArrayList<>();
        ClassTreeNode objectNode = classMap.get("Object");
		addNodeDescendantsToList(objectNode, objectsDescendant);

        //check for loops in class hierarchy
        classMap.forEach((className, classTreeNode) ->{
            if(!classTreeNode.equals(objectNode)){
            	if(!objectsDescendant.contains(classTreeNode)){
                errorHandler.register(2, classTreeNode.getASTNode().getFilename(),
                        classTreeNode.getASTNode().getLineNum(),
                        className + " is not a descendant of Object.");
            	}
            }
        });
    }

	/**
	 * Adds the node's descendants to the provided list
	 *
	 * @param node ClassTreeNode to search for descendants for
	 * @param descendantList list of the node's descendants
	 */
	private void addNodeDescendantsToList(ClassTreeNode node,
										  List<ClassTreeNode> descendantList){
		node.getChildrenList().forEachRemaining( children -> {
			descendantList.add(children);
			addNodeDescendantsToList(children, descendantList);
		});
	}

	/**
	 * Updates/Populates the symbol tables of every class
	 */
	private void updateClassMembers(ClassTreeNode parent) {
		(new MemberVisitor()).populateSymbolTables(parent, errorHandler);
		parent.getChildrenList().forEachRemaining(this::updateClassMembers);
	}

	/**
	 * Check that the bantam.Main class and main method are declared properly
	 */
	private void validateMain(){
		//Check if Main class exists
		ClassTreeNode mainTreeNode = classMap.get("Main");
		if(mainTreeNode == null){
			errorHandler.register(2, "Missing Main class");
		}
		else{
			//Check if main method exists and if it has return type void with no param
			Method mainMethod = (Method)mainTreeNode.getMethodSymbolTable().lookup("main");
			if(!(mainMethod != null &&
					mainMethod.getReturnType().equals("void") &&
					mainMethod.getFormalList().getSize() == 0)){
				errorHandler.register(2, mainTreeNode.getASTNode().getFilename(),
						-1, "void main() was not found.");
			}
		}
	}

	/**
	 * Type check contents of each class
	 */
	private void typeCheckClasses(){
		TypeCheckVisitor visitor = new TypeCheckVisitor();
		this.classMap.forEach((className, classTreeNode) ->
			visitor.typeCheckClass(classMap, classTreeNode, errorHandler));
	}

	/**
	 * Check that all break statements are contained in loops
	 */
	private void breakValidityCheck(){
		BreakCheckVisitor visitor = new BreakCheckVisitor();
		this.classMap.forEach((className, classTreeNode) ->
				visitor.checkBreakValidity(classTreeNode, errorHandler));
	}

	/**
	 * Reset the symbol tables by exiting the scope
	 */
	private void resetSymbolTables(){
		this.classMap.forEach((className, classTreeNode) -> {
			classTreeNode.getMethodSymbolTable().exitScope();
			classTreeNode.getVarSymbolTable().exitScope();
		});
	}

}
