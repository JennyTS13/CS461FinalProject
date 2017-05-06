/*
 * File: lexer.jlex
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 5
 * Date: April 28, 2017
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
/* code below is copied to the file containing the bantam.lexer */
package bantam.lexer;
import bantam.parser.TokenIds;
/* import Symbol class, which represents the symbols that are passed
   from the bantam.lexer to the bantam.parser.  Each symbol consists of an ID
   and a token value, which is defined in Token.java */
import java_cup.runtime.Symbol;
import java.math.BigInteger;


public class Lexer implements java_cup.runtime.Scanner {
	private final int YY_BUFFER_SIZE = 512;
	private final int YY_F = -1;
	private final int YY_NO_STATE = -1;
	private final int YY_NOT_ACCEPT = 0;
	private final int YY_START = 1;
	private final int YY_END = 2;
	private final int YY_NO_ANCHOR = 4;
	private final int YY_BOL = 128;
	private final int YY_EOF = 129;

    /* code below is copied to the class containing the bantam.lexer */
    /** maximum string size allowed */
    private final int MAX_STRING_SIZE = 5000;
    /** boolean indicating whether debugging is enabled */
    private boolean debug = false;
    /** boolean indicating whether we're lexing multiple files or a single file */
    private boolean multipleFiles = false;
    /** array that holds the names of each file we're lexing 
      * (used only when multipleFiles is true)
      * */
    private String[] filenames = {"Reader/InputStream"};
    /** array that holds the reader for each file we're lexing 
      * (used only when multipleFiles is true)
      * */
    private java.io.BufferedReader[] fileReaders;
    /** current file number used to index filenames and fileReaders
      * (used only when multipleFiles is true)
      * */
    private int fileCnt = 0;
    /** Lexer constructor - defined in JLex specification file
      * Needed to handle lexing multiple files
      * @param filenames list of filename strings
      * @param debug boolean indicating whether debugging is enabled
      * */
    public Lexer(String[] filenames, boolean debug) {
	// call private constructor, which does some initialization
	this();
	this.debug = debug;
	// set the multipleFiles flag to true (provides compatibility
	// with the single file constructors)
	multipleFiles = true;
	// initialize filenames field to parameter filenames
	// used later for finding the name of the current file
	this.filenames = filenames;
	// check that there is at least one specified filename
	if (filenames.length == 0)
	    throw new RuntimeException("Must specify at least one filename to scan");
	// must initialize readers for each file (BufferedReader)
	fileReaders = new java.io.BufferedReader[filenames.length];
	for (int i = 0; i < filenames.length; i++) {
	    // try...catch checks if file is found
	    try {
		// create the ith file reader
		fileReaders[i] = new java.io.BufferedReader(new java.io.FileReader(filenames[i]));
	    }
	    catch(java.io.FileNotFoundException e) {
		// if file not found then report an error and exit
		System.err.println("Error: file '" + filenames[i] + "' not found");
		System.exit(1);
	    }
	}
	// set yy_reader (a JLex variable) to the first file reader
	yy_reader = fileReaders[0];
	// set yyline to 1
	yyline = 1;
    }
    /** holds the current string constant
      * note: we use StringBuffer so that appending does not require constructing a new object 
      * */
    private StringBuffer currStringConst;
    /** getter method for accessing the current line number
      * @return current line number
      * */
    public int getCurrLineNum() {
	return yyline;
    }
    /** getter method for accessing the current file name
      * @return current filename string
      * */
    public String getCurrFilename() {
	return filenames[fileCnt];
    }
    /** print tokens - used primarily for debugging the bantam.lexer
      * */
    public void printTokens() throws java.io.IOException {
	// prevFileCnt is used to determine when the filename has changed
	// every time an EOF is encountered fileCnt is incremented
	// by testing fileCnt with prevFileCnt, we can determine when the
	// filename has changed and print the filename along with the tokens
	int prevFileCnt = -1;
	// try...catch needed since next_token() can throw an IOException
	try {
	    // iterate through all tokens
	    while (true) {
		// get the next token
		Symbol symbol = next_token();
		// check if file has changed
		if (prevFileCnt != fileCnt) {
		    // if it has then print out the new filename
		    System.out.println("# " + filenames[fileCnt]);
		    // update prevFileCnt
		    prevFileCnt = fileCnt;
		}
		// print out the token
		System.out.println((Token)symbol.value);
		// if we've reached the EOF (EOF only returned for the last
		// file) then we break out of loop
		if (symbol.sym == TokenIds.EOF)
		    break;
	    }
	}
	catch (java.io.IOException e) {
	    // if an IOException occurs then print error and exit
	    System.err.println("Unexpected IO exception while scanning.");
	    throw e;
	}
    }
	private java.io.BufferedReader yy_reader;
	private int yy_buffer_index;
	private int yy_buffer_read;
	private int yy_buffer_start;
	private int yy_buffer_end;
	private char yy_buffer[];
	private int yychar;
	private int yyline;
	private boolean yy_at_bol;
	private int yy_lexical_state;

	public Lexer (java.io.Reader reader) {
		this ();
		if (null == reader) {
			throw (new Error("Error: Bad input stream initializer."));
		}
		yy_reader = new java.io.BufferedReader(reader);
	}

	public Lexer (java.io.InputStream instream) {
		this ();
		if (null == instream) {
			throw (new Error("Error: Bad input stream initializer."));
		}
		yy_reader = new java.io.BufferedReader(new java.io.InputStreamReader(instream));
	}

	private Lexer () {
		yy_buffer = new char[YY_BUFFER_SIZE];
		yy_buffer_read = 0;
		yy_buffer_index = 0;
		yy_buffer_start = 0;
		yy_buffer_end = 0;
		yychar = 0;
		yyline = 0;
		yy_at_bol = true;
		yy_lexical_state = YYINITIAL;

    // set yyline to 0
    yyline = 1;
	}

	private boolean yy_eof_done = false;
	private final int YYINITIAL = 0;
	private final int yy_state_dtrans[] = {
		0
	};
	private void yybegin (int state) {
		yy_lexical_state = state;
	}
	private int yy_advance ()
		throws java.io.IOException {
		int next_read;
		int i;
		int j;

		if (yy_buffer_index < yy_buffer_read) {
			return yy_buffer[yy_buffer_index++];
		}

		if (0 != yy_buffer_start) {
			i = yy_buffer_start;
			j = 0;
			while (i < yy_buffer_read) {
				yy_buffer[j] = yy_buffer[i];
				++i;
				++j;
			}
			yy_buffer_end = yy_buffer_end - yy_buffer_start;
			yy_buffer_start = 0;
			yy_buffer_read = j;
			yy_buffer_index = j;
			next_read = yy_reader.read(yy_buffer,
					yy_buffer_read,
					yy_buffer.length - yy_buffer_read);
			if (-1 == next_read) {
				return YY_EOF;
			}
			yy_buffer_read = yy_buffer_read + next_read;
		}

		while (yy_buffer_index >= yy_buffer_read) {
			if (yy_buffer_index >= yy_buffer.length) {
				yy_buffer = yy_double(yy_buffer);
			}
			next_read = yy_reader.read(yy_buffer,
					yy_buffer_read,
					yy_buffer.length - yy_buffer_read);
			if (-1 == next_read) {
				return YY_EOF;
			}
			yy_buffer_read = yy_buffer_read + next_read;
		}
		return yy_buffer[yy_buffer_index++];
	}
	private void yy_move_end () {
		if (yy_buffer_end > yy_buffer_start &&
		    '\n' == yy_buffer[yy_buffer_end-1])
			yy_buffer_end--;
		if (yy_buffer_end > yy_buffer_start &&
		    '\r' == yy_buffer[yy_buffer_end-1])
			yy_buffer_end--;
	}
	private boolean yy_last_was_cr=false;
	private void yy_mark_start () {
		int i;
		for (i = yy_buffer_start; i < yy_buffer_index; ++i) {
			if ('\n' == yy_buffer[i] && !yy_last_was_cr) {
				++yyline;
			}
			if ('\r' == yy_buffer[i]) {
				++yyline;
				yy_last_was_cr=true;
			} else yy_last_was_cr=false;
		}
		yychar = yychar
			+ yy_buffer_index - yy_buffer_start;
		yy_buffer_start = yy_buffer_index;
	}
	private void yy_mark_end () {
		yy_buffer_end = yy_buffer_index;
	}
	private void yy_to_mark () {
		yy_buffer_index = yy_buffer_end;
		yy_at_bol = (yy_buffer_end > yy_buffer_start) &&
		            ('\r' == yy_buffer[yy_buffer_end-1] ||
		             '\n' == yy_buffer[yy_buffer_end-1] ||
		             2028/*LS*/ == yy_buffer[yy_buffer_end-1] ||
		             2029/*PS*/ == yy_buffer[yy_buffer_end-1]);
	}
	private java.lang.String yytext () {
		return (new java.lang.String(yy_buffer,
			yy_buffer_start,
			yy_buffer_end - yy_buffer_start));
	}
	private int yylength () {
		return yy_buffer_end - yy_buffer_start;
	}
	private char[] yy_double (char buf[]) {
		int i;
		char newbuf[];
		newbuf = new char[2*buf.length];
		for (i = 0; i < buf.length; ++i) {
			newbuf[i] = buf[i];
		}
		return newbuf;
	}
	private final int YY_E_INTERNAL = 0;
	private final int YY_E_MATCH = 1;
	private java.lang.String yy_error_string[] = {
		"Error: Internal error.\n",
		"Error: Unmatched input.\n"
	};
	private void yy_error (int code,boolean fatal) {
		java.lang.System.out.print(yy_error_string[code]);
		java.lang.System.out.flush();
		if (fatal) {
			throw new Error("Fatal Error.\n");
		}
	}
	private int[][] unpackFromString(int size1, int size2, String st) {
		int colonIndex = -1;
		String lengthString;
		int sequenceLength = 0;
		int sequenceInteger = 0;

		int commaIndex;
		String workString;

		int res[][] = new int[size1][size2];
		for (int i= 0; i < size1; i++) {
			for (int j= 0; j < size2; j++) {
				if (sequenceLength != 0) {
					res[i][j] = sequenceInteger;
					sequenceLength--;
					continue;
				}
				commaIndex = st.indexOf(',');
				workString = (commaIndex==-1) ? st :
					st.substring(0, commaIndex);
				st = st.substring(commaIndex+1);
				colonIndex = workString.indexOf(':');
				if (colonIndex == -1) {
					res[i][j]=Integer.parseInt(workString);
					continue;
				}
				lengthString =
					workString.substring(colonIndex+1);
				sequenceLength=Integer.parseInt(lengthString);
				workString=workString.substring(0,colonIndex);
				sequenceInteger=Integer.parseInt(workString);
				res[i][j] = sequenceInteger;
				sequenceLength--;
			}
		}
		return res;
	}
	private int yy_acpt[] = {
		/* 0 */ YY_NOT_ACCEPT,
		/* 1 */ YY_NO_ANCHOR,
		/* 2 */ YY_NO_ANCHOR,
		/* 3 */ YY_NO_ANCHOR,
		/* 4 */ YY_NO_ANCHOR,
		/* 5 */ YY_NO_ANCHOR,
		/* 6 */ YY_NO_ANCHOR,
		/* 7 */ YY_NO_ANCHOR,
		/* 8 */ YY_NO_ANCHOR,
		/* 9 */ YY_NO_ANCHOR,
		/* 10 */ YY_NO_ANCHOR,
		/* 11 */ YY_NO_ANCHOR,
		/* 12 */ YY_NO_ANCHOR,
		/* 13 */ YY_NO_ANCHOR,
		/* 14 */ YY_NO_ANCHOR,
		/* 15 */ YY_NO_ANCHOR,
		/* 16 */ YY_NO_ANCHOR,
		/* 17 */ YY_NO_ANCHOR,
		/* 18 */ YY_NO_ANCHOR,
		/* 19 */ YY_NO_ANCHOR,
		/* 20 */ YY_NO_ANCHOR,
		/* 21 */ YY_NO_ANCHOR,
		/* 22 */ YY_NO_ANCHOR,
		/* 23 */ YY_NO_ANCHOR,
		/* 24 */ YY_NO_ANCHOR,
		/* 25 */ YY_NO_ANCHOR,
		/* 26 */ YY_NO_ANCHOR,
		/* 27 */ YY_NO_ANCHOR,
		/* 28 */ YY_NO_ANCHOR,
		/* 29 */ YY_NO_ANCHOR,
		/* 30 */ YY_END,
		/* 31 */ YY_NO_ANCHOR,
		/* 32 */ YY_NO_ANCHOR,
		/* 33 */ YY_NO_ANCHOR,
		/* 34 */ YY_NO_ANCHOR,
		/* 35 */ YY_NO_ANCHOR,
		/* 36 */ YY_NO_ANCHOR,
		/* 37 */ YY_NO_ANCHOR,
		/* 38 */ YY_NO_ANCHOR,
		/* 39 */ YY_NO_ANCHOR,
		/* 40 */ YY_NO_ANCHOR,
		/* 41 */ YY_NO_ANCHOR,
		/* 42 */ YY_NO_ANCHOR,
		/* 43 */ YY_NO_ANCHOR,
		/* 44 */ YY_NO_ANCHOR,
		/* 45 */ YY_NO_ANCHOR,
		/* 46 */ YY_NO_ANCHOR,
		/* 47 */ YY_NO_ANCHOR,
		/* 48 */ YY_NO_ANCHOR,
		/* 49 */ YY_NO_ANCHOR,
		/* 50 */ YY_NO_ANCHOR,
		/* 51 */ YY_NO_ANCHOR,
		/* 52 */ YY_NO_ANCHOR,
		/* 53 */ YY_NO_ANCHOR,
		/* 54 */ YY_NO_ANCHOR,
		/* 55 */ YY_NO_ANCHOR,
		/* 56 */ YY_NO_ANCHOR,
		/* 57 */ YY_NO_ANCHOR,
		/* 58 */ YY_NOT_ACCEPT,
		/* 59 */ YY_NO_ANCHOR,
		/* 60 */ YY_NO_ANCHOR,
		/* 61 */ YY_NO_ANCHOR,
		/* 62 */ YY_NO_ANCHOR,
		/* 63 */ YY_END,
		/* 64 */ YY_NO_ANCHOR,
		/* 65 */ YY_NO_ANCHOR,
		/* 66 */ YY_NO_ANCHOR,
		/* 67 */ YY_NOT_ACCEPT,
		/* 68 */ YY_NO_ANCHOR,
		/* 69 */ YY_NO_ANCHOR,
		/* 70 */ YY_END,
		/* 71 */ YY_NO_ANCHOR,
		/* 72 */ YY_NOT_ACCEPT,
		/* 73 */ YY_NO_ANCHOR,
		/* 74 */ YY_END,
		/* 75 */ YY_NOT_ACCEPT,
		/* 76 */ YY_NO_ANCHOR,
		/* 77 */ YY_NOT_ACCEPT,
		/* 78 */ YY_NO_ANCHOR,
		/* 79 */ YY_NOT_ACCEPT,
		/* 80 */ YY_NO_ANCHOR,
		/* 81 */ YY_NOT_ACCEPT,
		/* 82 */ YY_NO_ANCHOR,
		/* 83 */ YY_NOT_ACCEPT,
		/* 84 */ YY_NO_ANCHOR,
		/* 85 */ YY_NOT_ACCEPT,
		/* 86 */ YY_NO_ANCHOR,
		/* 87 */ YY_NOT_ACCEPT,
		/* 88 */ YY_NO_ANCHOR,
		/* 89 */ YY_NOT_ACCEPT,
		/* 90 */ YY_NO_ANCHOR,
		/* 91 */ YY_NOT_ACCEPT,
		/* 92 */ YY_NOT_ACCEPT,
		/* 93 */ YY_NOT_ACCEPT,
		/* 94 */ YY_NOT_ACCEPT,
		/* 95 */ YY_NOT_ACCEPT,
		/* 96 */ YY_NOT_ACCEPT,
		/* 97 */ YY_NOT_ACCEPT,
		/* 98 */ YY_NOT_ACCEPT,
		/* 99 */ YY_NOT_ACCEPT,
		/* 100 */ YY_NOT_ACCEPT,
		/* 101 */ YY_NOT_ACCEPT,
		/* 102 */ YY_NOT_ACCEPT,
		/* 103 */ YY_NOT_ACCEPT,
		/* 104 */ YY_NOT_ACCEPT,
		/* 105 */ YY_NOT_ACCEPT,
		/* 106 */ YY_NOT_ACCEPT,
		/* 107 */ YY_NOT_ACCEPT,
		/* 108 */ YY_NOT_ACCEPT,
		/* 109 */ YY_NOT_ACCEPT,
		/* 110 */ YY_NOT_ACCEPT,
		/* 111 */ YY_NOT_ACCEPT,
		/* 112 */ YY_NOT_ACCEPT,
		/* 113 */ YY_NOT_ACCEPT,
		/* 114 */ YY_NOT_ACCEPT,
		/* 115 */ YY_NOT_ACCEPT,
		/* 116 */ YY_NO_ANCHOR,
		/* 117 */ YY_END,
		/* 118 */ YY_NO_ANCHOR,
		/* 119 */ YY_NOT_ACCEPT,
		/* 120 */ YY_NOT_ACCEPT,
		/* 121 */ YY_NOT_ACCEPT,
		/* 122 */ YY_NOT_ACCEPT,
		/* 123 */ YY_NOT_ACCEPT,
		/* 124 */ YY_NO_ANCHOR,
		/* 125 */ YY_NO_ANCHOR,
		/* 126 */ YY_NO_ANCHOR,
		/* 127 */ YY_NO_ANCHOR,
		/* 128 */ YY_NO_ANCHOR,
		/* 129 */ YY_NO_ANCHOR,
		/* 130 */ YY_NO_ANCHOR,
		/* 131 */ YY_NO_ANCHOR,
		/* 132 */ YY_NO_ANCHOR,
		/* 133 */ YY_NO_ANCHOR,
		/* 134 */ YY_NO_ANCHOR,
		/* 135 */ YY_NO_ANCHOR,
		/* 136 */ YY_NO_ANCHOR,
		/* 137 */ YY_NO_ANCHOR,
		/* 138 */ YY_NO_ANCHOR,
		/* 139 */ YY_NO_ANCHOR,
		/* 140 */ YY_NO_ANCHOR,
		/* 141 */ YY_NO_ANCHOR,
		/* 142 */ YY_NO_ANCHOR,
		/* 143 */ YY_NO_ANCHOR,
		/* 144 */ YY_NO_ANCHOR,
		/* 145 */ YY_NO_ANCHOR,
		/* 146 */ YY_NO_ANCHOR,
		/* 147 */ YY_NO_ANCHOR,
		/* 148 */ YY_NO_ANCHOR,
		/* 149 */ YY_NO_ANCHOR,
		/* 150 */ YY_NO_ANCHOR,
		/* 151 */ YY_NO_ANCHOR,
		/* 152 */ YY_NO_ANCHOR,
		/* 153 */ YY_NO_ANCHOR,
		/* 154 */ YY_NO_ANCHOR
	};
	private int yy_cmap[] = unpackFromString(1,130,
"14:9,11,8,14,11,8,14:18,51,29,9,14:2,46,32,13,19,20,6,44,49,45,50,5,40,41:9" +
",14,48,30,47,31,14:2,43:26,17,7,18,34,42,14,3,36,1,39,24,25,43,22,23,43,37," +
"2,43,28,26,43:2,27,4,10,35,43,21,38,43:2,15,33,16,14:2,0,12")[0];

	private int yy_rmap[] = unpackFromString(1,155,
"0,1,2,3,1:2,4,1:6,5,6,7,8,9,1,10:2,11,12,1,13,1:3,14,15,16,17,1,18,1:3,19,1" +
":7,18:2,1,20,18,1,18:7,21,22,21,23,1:2,24,25,26,27,28,29,30,31,24,32,33,34," +
"35,36,37,38,39,40,41,42,43,16,44,45,46,17,47,48,49,50,51,52,53,54,20,55,56," +
"57,30,33,25,26,58,59,60,61,62,63,64,65,66,67,68,69,25,70,71,64,69,31,72,73," +
"74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,18,97," +
"98,99,100,101")[0];

	private int yy_nxt[][] = unpackFromString(102,52,
"1,2,149:3,3,4,5,6,60,134,6,1,69,5,7,8,9,10,11,12,151,149,59,135,116,149,153" +
",124,13,14,15,16,17,18,149,154,149:3,19,61,20,149,21,22,23,24,25,26,27,6,-1" +
":53,149,136,149:2,-1:5,149,-1:10,149:8,-1:6,149:9,-1:13,28,29,-1:53,6,-1:2," +
"6,-1:39,6,-1:47,34,-1:34,35,-1:16,36,-1:35,37,-1:15,38,-1:36,39,-1:52,40,-1" +
":19,20:4,-1:5,20,-1:10,20:8,-1:6,20:9,-1:52,41,-1:52,42,-1:53,43,-1:5,28:7," +
"-1,28:3,-1,28:39,-1,29:4,77,79,29:5,-1,29:39,-1,85:6,87,30,44,85:2,63,85:39" +
",-1,89:6,91,-1,89:3,-1,89:39,-1,149:4,-1:5,149,-1:10,149:8,-1:6,149:9,-1:39" +
",47,-1:21,98:6,99,-1,48,98:2,-1,98:39,-1,58:6,67,30,31,58:2,63,58:39,-1,149" +
":4,-1:5,149,-1:10,149:4,33,149:2,138,-1:6,149:9,-1:9,20:4,-1:5,20,-1:10,20:" +
"8,-1:6,20:5,61:2,20:2,-1:21,32,-1:39,104:7,-1,118,104:2,-1,104:39,-1,105:6," +
"109,97,48,105:2,-1,105:39,-1,81:6,119,70,83,58,81,63,81:12,58,81,58:2,81:23" +
",-1,149:4,-1:5,149,-1:10,149:6,45,149,-1:6,149:9,-1:9,72:6,75,-1,72:2,-1:2," +
"32,72:38,-1,94:6,95,74,118,94:2,63,94:39,-1,123:6,114,97,65,123:2,-1,123:39" +
",-1,149:4,-1:5,149,-1:10,46,149:7,-1:6,149:9,-1:9,103:7,74,-1,103:2,63,103:" +
"39,-1,92:6,-1,92,-1,72,92,-1,64,92:11,72,92,72:2,92:23,-1,149:4,-1:5,149,-1" +
":10,149:3,49,149:4,-1:6,149:9,-1:9,77:5,79,77:5,-1,77:39,-1,149:4,-1:5,149," +
"-1:10,149:3,51,149:4,-1:6,149:9,-1:9,77:4,62,79,77:5,-1,77:39,-1,149:3,52,-" +
"1:5,149,-1:10,149:8,-1:6,149:9,-1:9,81:6,93,30,48,81:2,63,81:39,-1,149:4,-1" +
":5,149,-1:10,149:3,53,149:4,-1:6,149:9,-1:9,83:6,96,97,31,83:2,-1,83:39,-1," +
"149:4,-1:5,149,-1:10,149:8,-1:6,149:2,54,149:6,-1:9,149:4,-1:5,149,-1:10,14" +
"9:7,55,-1:6,149:9,-1:9,85:7,74,97,85:2,63,85:39,-1,149:3,56,-1:5,149,-1:10," +
"149:8,-1:6,149:9,-1:9,149:4,-1:5,149,-1:10,149:4,57,149:3,-1:6,149:9,-1:9,9" +
"8:6,91,121,89:2,98,-1,98:12,89,98,89:2,98:23,-1:13,50,-1:39,81:6,120,70,66," +
"81:2,63,81:39,-1,94:7,74,118,94:2,63,94:39,-1,102:6,94,70,118,94,102,63,102" +
":12,94,102,94:2,102:23,-1,105:6,106,121,83:2,105,-1,105:12,83,105,83:2,105:" +
"23,-1,97:6,107,97,44,97:2,-1,97:39,-1,98:6,99,121,48,98:2,-1,98:39,-1,100:6" +
",110,30,65,100:2,63,100:39,-1,122:6,100,70,71,100,122,63,122:12,100,122,100" +
":2,122:23,-1,105:6,96,111,31,83,105,-1,105:12,83,105,83:2,105:23,-1,97:7,-1" +
",97:3,-1,97:39,-1,112:6,104,121,118,104,112,-1,112:12,104,112,104:2,112:23," +
"-1,105:6,113,121,66,105:2,-1,105:39,-1,100:7,74,71,100:2,63,100:39,-1,123:6" +
",115,97,65,123:2,-1,123:39,-1,104:6,108,-1,118,104:2,-1,104:39,-1,105:6,109" +
",111,48,105:2,-1,105:39,-1,123:7,-1,71,123:2,-1,123:39,-1,111:6,123,121,71," +
"123,111,-1,111:12,123,111,123:2,111:23,-1,149:2,140,149,-1:5,149,-1:10,149:" +
"5,68,149:2,-1:6,149:9,-1:9,100:6,101,30,65,100:2,63,100:39,-1,81:6,67,117,3" +
"1,58,81,63,81:12,58,81,58:2,81:23,-1,81:6,93,117,48,81:2,63,81:39,-1,149:4," +
"-1:5,149,-1:10,149:3,73,149:4,-1:6,149:9,-1:9,149:4,-1:5,149,-1:10,149:8,-1" +
":6,76,149:8,-1:9,149:3,78,-1:5,149,-1:10,149:8,-1:6,149:9,-1:9,149:3,80,-1:" +
"5,149,-1:10,149:8,-1:6,149:9,-1:9,149,82,149:2,-1:5,149,-1:10,149:8,-1:6,14" +
"9:9,-1:9,149:3,76,-1:5,149,-1:10,149:8,-1:6,149:9,-1:9,149:2,84,149,-1:5,14" +
"9,-1:10,149:8,-1:6,149:9,-1:9,149:4,-1:5,149,-1:10,149:6,86,149,-1:6,149:9," +
"-1:9,149:4,-1:5,149,-1:10,149:8,-1:6,149:4,88,149:4,-1:9,149:4,-1:5,149,-1:" +
"10,149:5,90,149:2,-1:6,149:9,-1:9,149:4,-1:5,149,-1:10,149:6,125,149,-1:6,1" +
"49:9,-1:9,149,126,149:2,-1:5,149,-1:10,149:8,-1:6,149:3,139,149:5,-1:9,149:" +
"2,127,149,-1:5,149,-1:10,149:8,-1:6,149:9,-1:9,149:4,-1:5,149,-1:10,149:2,1" +
"28,149:5,-1:6,149:9,-1:9,149:3,152,-1:5,149,-1:10,149:8,-1:6,149:9,-1:9,149" +
":4,-1:5,142,-1:10,149:8,-1:6,149:9,-1:9,149,129,149:2,-1:5,149,-1:10,149:8," +
"-1:6,149:9,-1:9,149:4,-1:5,149,-1:10,149:3,130,149:4,-1:6,149:9,-1:9,149:4," +
"-1:5,149,-1:10,149:3,145,149:4,-1:6,149:9,-1:9,149:4,-1:5,149,-1:10,149:8,-" +
"1:6,131,149:8,-1:9,149:2,146,149,-1:5,149,-1:10,149:8,-1:6,149:9,-1:9,149:4" +
",-1:5,149,-1:10,149:7,132,-1:6,149:9,-1:9,149:4,-1:5,149,-1:10,149:7,147,-1" +
":6,149:9,-1:9,148,149:3,-1:5,149,-1:10,149:8,-1:6,149:9,-1:9,149:4,-1:5,149" +
",-1:10,149:3,133,149:4,-1:6,149:9,-1:9,149:4,-1:5,143,-1:10,149:8,-1:6,149:" +
"9,-1:9,149:4,-1:5,149,-1:10,149,137,149:6,-1:6,149:9,-1:9,149:4,-1:5,144,-1" +
":10,149:8,-1:6,149:9,-1:9,149:4,-1:5,149,-1:10,149:3,150,149:4,-1:6,149:9,-" +
"1:9,149:4,-1:5,149,-1:10,149:6,141,149,-1:6,149:9,-1:8");

	public java_cup.runtime.Symbol next_token ()
		throws java.io.IOException {
		int yy_lookahead;
		int yy_anchor = YY_NO_ANCHOR;
		int yy_state = yy_state_dtrans[yy_lexical_state];
		int yy_next_state = YY_NO_STATE;
		int yy_last_accept_state = YY_NO_STATE;
		boolean yy_initial = true;
		int yy_this_accept;

		yy_mark_start();
		yy_this_accept = yy_acpt[yy_state];
		if (YY_NOT_ACCEPT != yy_this_accept) {
			yy_last_accept_state = yy_state;
			yy_mark_end();
		}
		while (true) {
			if (yy_initial && yy_at_bol) yy_lookahead = YY_BOL;
			else yy_lookahead = yy_advance();
			yy_next_state = YY_F;
			yy_next_state = yy_nxt[yy_rmap[yy_state]][yy_cmap[yy_lookahead]];
			if (YY_EOF == yy_lookahead && true == yy_initial) {

    /* code below is executed when the end-of-file is reached */
    switch(yy_lexical_state) {
    case YYINITIAL:
	// if in YYINITIAL when EOF occurs then no error
	break;
    // if defining other states then might want to add other cases here...
    }
    // if we reach here then we should either start lexing the next
    // file (if there are more files to lex) or return EOF (if we're
    // at the file)
    if (multipleFiles && fileCnt < fileReaders.length - 1) {
	// more files to lex so update yy_reader and yyline and then continue
	yy_reader = fileReaders[++fileCnt];
	yyline = 1;
	continue;
    }
    // if we reach here, then we're at the last file so we return EOF
    // to bantam.parser
    return new Symbol(TokenIds.EOF, new Token("EOF", yyline));
			}
			if (YY_F != yy_next_state) {
				yy_state = yy_next_state;
				yy_initial = false;
				yy_this_accept = yy_acpt[yy_state];
				if (YY_NOT_ACCEPT != yy_this_accept) {
					yy_last_accept_state = yy_state;
					yy_mark_end();
				}
			}
			else {
				if (YY_NO_STATE == yy_last_accept_state) {
					throw (new Error("Lexical Error: Unmatched Input."));
				}
				else {
					yy_anchor = yy_acpt[yy_last_accept_state];
					if (0 != (YY_END & yy_anchor)) {
						yy_move_end();
					}
					yy_to_mark();
					switch (yy_last_accept_state) {
					case 1:
						
					case -2:
						break;
					case 2:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -3:
						break;
					case 3:
						{ return new Symbol(TokenIds.DIVIDE,
                                new Token("/", yyline)); }
					case -4:
						break;
					case 4:
						{ return new Symbol(TokenIds.TIMES,
                                new Token("*", yyline)); }
					case -5:
						break;
					case 5:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported character.", yyline)); }
					case -6:
						break;
					case 6:
						{ return new Symbol(TokenIds.SPACING,
                                new Token(yytext(), yyline));}
					case -7:
						break;
					case 7:
						{ return new Symbol(TokenIds.LBRACE,
                                new Token("{", yyline)); }
					case -8:
						break;
					case 8:
						{ return new Symbol(TokenIds.RBRACE,
                                new Token("}", yyline)); }
					case -9:
						break;
					case 9:
						{ return new Symbol(TokenIds.LSQBRACE,
                                new Token("[", yyline)); }
					case -10:
						break;
					case 10:
						{ return new Symbol(TokenIds.RSQBRACE,
                                new Token("]", yyline)); }
					case -11:
						break;
					case 11:
						{ return new Symbol(TokenIds.LPAREN,
                                new Token("(", yyline)); }
					case -12:
						break;
					case 12:
						{ return new Symbol(TokenIds.RPAREN,
                                new Token(")", yyline)); }
					case -13:
						break;
					case 13:
						{ return new Symbol(TokenIds.NOT,
                                new Token("!", yyline)); }
					case -14:
						break;
					case 14:
						{ return new Symbol(TokenIds.LT,
                                new Token("<", yyline)); }
					case -15:
						break;
					case 15:
						{ return new Symbol(TokenIds.GT,
                                new Token(">", yyline)); }
					case -16:
						break;
					case 16:
						{ return new Symbol(TokenIds.BITAND,
                                new Token("&", yyline)); }
					case -17:
						break;
					case 17:
						{ return new Symbol(TokenIds.BITOR,
                                new Token("|", yyline)); }
					case -18:
						break;
					case 18:
						{ return new Symbol(TokenIds.BITXOR,
                                new Token("^", yyline)); }
					case -19:
						break;
					case 19:
						{ if(new BigInteger(yytext()).compareTo(BigInteger.valueOf(2147483647)) == 1) {
                                return new Symbol(TokenIds.LEX_ERROR,
                                    new Token("Integer constant too big.", yyline)); }
                              return new Symbol(TokenIds.INT_CONST,
                                new Token(yytext(), yyline)); }
					case -20:
						break;
					case 20:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Illegal ID", yyline)); }
					case -21:
						break;
					case 21:
						{ return new Symbol(TokenIds.PLUS,
                                new Token("+", yyline)); }
					case -22:
						break;
					case 22:
						{ return new Symbol(TokenIds.MINUS,
                                new Token("-", yyline)); }
					case -23:
						break;
					case 23:
						{ return new Symbol(TokenIds.MODULUS,
                                new Token("%", yyline)); }
					case -24:
						break;
					case 24:
						{ return new Symbol(TokenIds.ASSIGN,
                                new Token("=", yyline)); }
					case -25:
						break;
					case 25:
						{ return new Symbol(TokenIds.SEMI,
                                new Token(";", yyline)); }
					case -26:
						break;
					case 26:
						{ return new Symbol(TokenIds.COMMA,
                                new Token(",", yyline)); }
					case -27:
						break;
					case 27:
						{ return new Symbol(TokenIds.DOT,
                                new Token(".", yyline)); }
					case -28:
						break;
					case 28:
						{ return new Symbol(TokenIds.COMMENT,
                                                            new Token(yytext(), yyline)); }
					case -29:
						break;
					case 29:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated multiline comment.", yyline)); }
					case -30:
						break;
					case 30:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -31:
						break;
					case 31:
						{ if(yytext().length()>5000){
                                return new Symbol(TokenIds.LEX_ERROR, new Token(
                                    "String constant over 5000 characters.", yyline)); }
                              return new Symbol(TokenIds.STRING_CONST,
                                new Token(yytext(), yyline)); }
					case -32:
						break;
					case 32:
						{ return new Symbol(TokenIds.STRING_CONST,
                                        new Token(yytext(), yyline)); }
					case -33:
						break;
					case 33:
						{ return new Symbol(TokenIds.IF,
                                new Token("IF", yyline)); }
					case -34:
						break;
					case 34:
						{ return new Symbol(TokenIds.NE,
                                new Token("!=", yyline)); }
					case -35:
						break;
					case 35:
						{ return new Symbol(TokenIds.SIGNEDLEFTSHIFT,
                                new Token("<<", yyline)); }
					case -36:
						break;
					case 36:
						{ return new Symbol(TokenIds.LEQ,
                                new Token("<=", yyline)); }
					case -37:
						break;
					case 37:
						{ return new Symbol(TokenIds.SIGNEDRIGHTSHIFT,
                                new Token(">>", yyline)); }
					case -38:
						break;
					case 38:
						{ return new Symbol(TokenIds.GEQ,
                                new Token(">=", yyline)); }
					case -39:
						break;
					case 39:
						{ return new Symbol(TokenIds.AND,
                                new Token("&&", yyline)); }
					case -40:
						break;
					case 40:
						{ return new Symbol(TokenIds.OR,
                                new Token("||", yyline)); }
					case -41:
						break;
					case 41:
						{ return new Symbol(TokenIds.INCR,
                                new Token("++", yyline)); }
					case -42:
						break;
					case 42:
						{ return new Symbol(TokenIds.DECR,
                                new Token("--", yyline)); }
					case -43:
						break;
					case 43:
						{ return new Symbol(TokenIds.EQ,
                                new Token("==", yyline)); }
					case -44:
						break;
					case 44:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("String constant spanning multiple lines.", yyline)); }
					case -45:
						break;
					case 45:
						{ return new Symbol(TokenIds.FOR,
                                new Token("FOR", yyline)); }
					case -46:
						break;
					case 46:
						{ return new Symbol(TokenIds.NEW,
                                new Token("NEW", yyline)); }
					case -47:
						break;
					case 47:
						{ return new Symbol(TokenIds.UNSIGNEDRIGHTSHIFT,
                                new Token(">>>", yyline)); }
					case -48:
						break;
					case 48:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -49:
						break;
					case 49:
						{ return new Symbol(TokenIds.BOOLEAN_CONST,
                                new Token(yytext(), yyline)); }
					case -50:
						break;
					case 50:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string.", yyline)); }
					case -51:
						break;
					case 51:
						{ return new Symbol(TokenIds.ELSE,
                                new Token("ELSE", yyline)); }
					case -52:
						break;
					case 52:
						{ return new Symbol(TokenIds.CLASS,
						        new Token("CLASS", yyline)); }
					case -53:
						break;
					case 53:
						{ return new Symbol(TokenIds.WHILE,
                                new Token("WHILE", yyline)); }
					case -54:
						break;
					case 54:
						{ return new Symbol(TokenIds.BREAK,
                                new Token("BREAK", yyline)); }
					case -55:
						break;
					case 55:
						{ return new Symbol(TokenIds.RETURN,
                                new Token("RETURN", yyline)); }
					case -56:
						break;
					case 56:
						{ return new Symbol(TokenIds.EXTENDS,
                                new Token("EXTENDS", yyline)); }
					case -57:
						break;
					case 57:
						{ return new Symbol(TokenIds.INSTANCEOF,
                                new Token("INSTANCEOF", yyline)); }
					case -58:
						break;
					case 59:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -59:
						break;
					case 60:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported character.", yyline)); }
					case -60:
						break;
					case 61:
						{ if(new BigInteger(yytext()).compareTo(BigInteger.valueOf(2147483647)) == 1) {
                                return new Symbol(TokenIds.LEX_ERROR,
                                    new Token("Integer constant too big.", yyline)); }
                              return new Symbol(TokenIds.INT_CONST,
                                new Token(yytext(), yyline)); }
					case -61:
						break;
					case 62:
						{ return new Symbol(TokenIds.COMMENT,
                                                            new Token(yytext(), yyline)); }
					case -62:
						break;
					case 63:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -63:
						break;
					case 64:
						{ return new Symbol(TokenIds.STRING_CONST,
                                        new Token(yytext(), yyline)); }
					case -64:
						break;
					case 65:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("String constant spanning multiple lines.", yyline)); }
					case -65:
						break;
					case 66:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -66:
						break;
					case 68:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -67:
						break;
					case 69:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported character.", yyline)); }
					case -68:
						break;
					case 70:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -69:
						break;
					case 71:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -70:
						break;
					case 73:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -71:
						break;
					case 74:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -72:
						break;
					case 76:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -73:
						break;
					case 78:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -74:
						break;
					case 80:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -75:
						break;
					case 82:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -76:
						break;
					case 84:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -77:
						break;
					case 86:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -78:
						break;
					case 88:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -79:
						break;
					case 90:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -80:
						break;
					case 116:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -81:
						break;
					case 117:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -82:
						break;
					case 118:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -83:
						break;
					case 124:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -84:
						break;
					case 125:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -85:
						break;
					case 126:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -86:
						break;
					case 127:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -87:
						break;
					case 128:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -88:
						break;
					case 129:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -89:
						break;
					case 130:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -90:
						break;
					case 131:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -91:
						break;
					case 132:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -92:
						break;
					case 133:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -93:
						break;
					case 134:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -94:
						break;
					case 135:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -95:
						break;
					case 136:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -96:
						break;
					case 137:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -97:
						break;
					case 138:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -98:
						break;
					case 139:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -99:
						break;
					case 140:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -100:
						break;
					case 141:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -101:
						break;
					case 142:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -102:
						break;
					case 143:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -103:
						break;
					case 144:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -104:
						break;
					case 145:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -105:
						break;
					case 146:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -106:
						break;
					case 147:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -107:
						break;
					case 148:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -108:
						break;
					case 149:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -109:
						break;
					case 150:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -110:
						break;
					case 151:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -111:
						break;
					case 152:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -112:
						break;
					case 153:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -113:
						break;
					case 154:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -114:
						break;
					default:
						yy_error(YY_E_INTERNAL,false);
					case -1:
					}
					yy_initial = true;
					yy_state = yy_state_dtrans[yy_lexical_state];
					yy_next_state = YY_NO_STATE;
					yy_last_accept_state = YY_NO_STATE;
					yy_mark_start();
					yy_this_accept = yy_acpt[yy_state];
					if (YY_NOT_ACCEPT != yy_this_accept) {
						yy_last_accept_state = yy_state;
						yy_mark_end();
					}
				}
			}
		}
	}
}
