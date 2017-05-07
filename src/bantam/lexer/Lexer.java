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
		/* 30 */ YY_NO_ANCHOR,
		/* 31 */ YY_END,
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
		/* 58 */ YY_NO_ANCHOR,
		/* 59 */ YY_NOT_ACCEPT,
		/* 60 */ YY_NO_ANCHOR,
		/* 61 */ YY_NO_ANCHOR,
		/* 62 */ YY_NO_ANCHOR,
		/* 63 */ YY_NO_ANCHOR,
		/* 64 */ YY_END,
		/* 65 */ YY_NO_ANCHOR,
		/* 66 */ YY_NO_ANCHOR,
		/* 67 */ YY_NO_ANCHOR,
		/* 68 */ YY_NOT_ACCEPT,
		/* 69 */ YY_NO_ANCHOR,
		/* 70 */ YY_NO_ANCHOR,
		/* 71 */ YY_END,
		/* 72 */ YY_NO_ANCHOR,
		/* 73 */ YY_NOT_ACCEPT,
		/* 74 */ YY_NO_ANCHOR,
		/* 75 */ YY_END,
		/* 76 */ YY_NOT_ACCEPT,
		/* 77 */ YY_NO_ANCHOR,
		/* 78 */ YY_NOT_ACCEPT,
		/* 79 */ YY_NO_ANCHOR,
		/* 80 */ YY_NOT_ACCEPT,
		/* 81 */ YY_NO_ANCHOR,
		/* 82 */ YY_NOT_ACCEPT,
		/* 83 */ YY_NO_ANCHOR,
		/* 84 */ YY_NOT_ACCEPT,
		/* 85 */ YY_NO_ANCHOR,
		/* 86 */ YY_NOT_ACCEPT,
		/* 87 */ YY_NO_ANCHOR,
		/* 88 */ YY_NOT_ACCEPT,
		/* 89 */ YY_NO_ANCHOR,
		/* 90 */ YY_NOT_ACCEPT,
		/* 91 */ YY_NO_ANCHOR,
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
		/* 116 */ YY_NOT_ACCEPT,
		/* 117 */ YY_NO_ANCHOR,
		/* 118 */ YY_END,
		/* 119 */ YY_NO_ANCHOR,
		/* 120 */ YY_NOT_ACCEPT,
		/* 121 */ YY_NOT_ACCEPT,
		/* 122 */ YY_NOT_ACCEPT,
		/* 123 */ YY_NOT_ACCEPT,
		/* 124 */ YY_NOT_ACCEPT,
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
		/* 154 */ YY_NO_ANCHOR,
		/* 155 */ YY_NO_ANCHOR
	};
	private int yy_cmap[] = unpackFromString(1,130,
"14:9,11,8,14,11,8,14:18,52,29,9,14:2,47,32,13,19,20,6,45,50,46,51,5,41,42:9" +
",14,49,30,48,31,14:2,44:26,17,7,18,34,43,14,3,37,1,40,24,25,44,22,23,44,38," +
"2,44,28,26,44:2,27,4,10,36,44,21,39,44:2,15,33,16,35,14,0,12")[0];

	private int yy_rmap[] = unpackFromString(1,156,
"0,1,2,3,1:9,4,5,6,7,8,1:2,9:2,10,11,1,12,1:3,13,14,15,16,1,17,1:3,18,1:7,17" +
":2,1,19,17,1,17:7,20,21,20,22,1:2,23,24,25,26,27,28,29,30,23,31,32,33,34,35" +
",36,37,38,39,40,41,42,15,43,44,45,16,46,47,48,49,50,51,52,53,19,54,55,56,29" +
",32,24,25,57,58,59,60,61,62,63,64,65,66,67,68,24,69,70,63,68,30,71,72,73,74" +
",75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,17,96,97,98" +
",99,100")[0];

	private int yy_nxt[][] = unpackFromString(101,53,
"1,2,150:3,3,4,5,6,61,135,6,1,70,5,7,8,9,10,11,12,152,150,60,136,117,150,154" +
",125,13,14,15,16,17,18,19,150,155,150:3,20,62,21,150,22,23,24,25,26,27,28,6" +
",-1:54,150,137,150:2,-1:5,150,-1:10,150:8,-1:7,150:9,-1:13,29,30,-1:94,35,-" +
"1:34,36,-1:17,37,-1:35,38,-1:16,39,-1:36,40,-1:53,41,-1:20,21:4,-1:5,21,-1:" +
"10,21:8,-1:7,21:9,-1:53,42,-1:53,43,-1:54,44,-1:5,29:7,-1,29:3,-1,29:40,-1," +
"30:4,78,80,30:5,-1,30:40,-1,86:6,88,31,45,86:2,64,86:40,-1,90:6,92,-1,90:3," +
"-1,90:40,-1,150:4,-1:5,150,-1:10,150:8,-1:7,150:9,-1:39,48,-1:22,99:6,100,-" +
"1,49,99:2,-1,99:40,-1,59:6,68,31,32,59:2,64,59:40,-1,150:4,-1:5,150,-1:10,1" +
"50:4,34,150:2,139,-1:7,150:9,-1:9,21:4,-1:5,21,-1:10,21:8,-1:7,21:5,62:2,21" +
":2,-1:21,33,-1:40,105:7,-1,119,105:2,-1,105:40,-1,106:6,110,98,49,106:2,-1," +
"106:40,-1,82:6,120,71,84,59,82,64,82:12,59,82,59:2,82:24,-1,150:4,-1:5,150," +
"-1:10,150:6,46,150,-1:7,150:9,-1:9,73:6,76,-1,73:2,-1:2,33,73:39,-1,95:6,96" +
",75,119,95:2,64,95:40,-1,124:6,115,98,66,124:2,-1,124:40,-1,150:4,-1:5,150," +
"-1:10,47,150:7,-1:7,150:9,-1:9,104:7,75,-1,104:2,64,104:40,-1,93:6,-1,93,-1" +
",73,93,-1,65,93:11,73,93,73:2,93:24,-1,150:4,-1:5,150,-1:10,150:3,50,150:4," +
"-1:7,150:9,-1:9,78:5,80,78:5,-1,78:40,-1,150:4,-1:5,150,-1:10,150:3,52,150:" +
"4,-1:7,150:9,-1:9,78:4,63,80,78:5,-1,78:40,-1,150:3,53,-1:5,150,-1:10,150:8" +
",-1:7,150:9,-1:9,82:6,94,31,49,82:2,64,82:40,-1,150:4,-1:5,150,-1:10,150:3," +
"54,150:4,-1:7,150:9,-1:9,84:6,97,98,32,84:2,-1,84:40,-1,150:4,-1:5,150,-1:1" +
"0,150:8,-1:7,150:2,55,150:6,-1:9,150:4,-1:5,150,-1:10,150:7,56,-1:7,150:9,-" +
"1:9,86:7,75,98,86:2,64,86:40,-1,150:3,57,-1:5,150,-1:10,150:8,-1:7,150:9,-1" +
":9,150:4,-1:5,150,-1:10,150:4,58,150:3,-1:7,150:9,-1:9,99:6,92,122,90:2,99," +
"-1,99:12,90,99,90:2,99:24,-1:13,51,-1:40,82:6,121,71,67,82:2,64,82:40,-1,95" +
":7,75,119,95:2,64,95:40,-1,103:6,95,71,119,95,103,64,103:12,95,103,95:2,103" +
":24,-1,106:6,107,122,84:2,106,-1,106:12,84,106,84:2,106:24,-1,98:6,108,98,4" +
"5,98:2,-1,98:40,-1,99:6,100,122,49,99:2,-1,99:40,-1,101:6,111,31,66,101:2,6" +
"4,101:40,-1,123:6,101,71,72,101,123,64,123:12,101,123,101:2,123:24,-1,106:6" +
",97,112,32,84,106,-1,106:12,84,106,84:2,106:24,-1,98:7,-1,98:3,-1,98:40,-1," +
"113:6,105,122,119,105,113,-1,113:12,105,113,105:2,113:24,-1,106:6,114,122,6" +
"7,106:2,-1,106:40,-1,101:7,75,72,101:2,64,101:40,-1,124:6,116,98,66,124:2,-" +
"1,124:40,-1,105:6,109,-1,119,105:2,-1,105:40,-1,106:6,110,112,49,106:2,-1,1" +
"06:40,-1,124:7,-1,72,124:2,-1,124:40,-1,112:6,124,122,72,124,112,-1,112:12," +
"124,112,124:2,112:24,-1,150:2,141,150,-1:5,150,-1:10,150:5,69,150:2,-1:7,15" +
"0:9,-1:9,101:6,102,31,66,101:2,64,101:40,-1,82:6,68,118,32,59,82,64,82:12,5" +
"9,82,59:2,82:24,-1,82:6,94,118,49,82:2,64,82:40,-1,150:4,-1:5,150,-1:10,150" +
":3,74,150:4,-1:7,150:9,-1:9,150:4,-1:5,150,-1:10,150:8,-1:7,77,150:8,-1:9,1" +
"50:3,79,-1:5,150,-1:10,150:8,-1:7,150:9,-1:9,150:3,81,-1:5,150,-1:10,150:8," +
"-1:7,150:9,-1:9,150,83,150:2,-1:5,150,-1:10,150:8,-1:7,150:9,-1:9,150:3,77," +
"-1:5,150,-1:10,150:8,-1:7,150:9,-1:9,150:2,85,150,-1:5,150,-1:10,150:8,-1:7" +
",150:9,-1:9,150:4,-1:5,150,-1:10,150:6,87,150,-1:7,150:9,-1:9,150:4,-1:5,15" +
"0,-1:10,150:8,-1:7,150:4,89,150:4,-1:9,150:4,-1:5,150,-1:10,150:5,91,150:2," +
"-1:7,150:9,-1:9,150:4,-1:5,150,-1:10,150:6,126,150,-1:7,150:9,-1:9,150,127," +
"150:2,-1:5,150,-1:10,150:8,-1:7,150:3,140,150:5,-1:9,150:2,128,150,-1:5,150" +
",-1:10,150:8,-1:7,150:9,-1:9,150:4,-1:5,150,-1:10,150:2,129,150:5,-1:7,150:" +
"9,-1:9,150:3,153,-1:5,150,-1:10,150:8,-1:7,150:9,-1:9,150:4,-1:5,143,-1:10," +
"150:8,-1:7,150:9,-1:9,150,130,150:2,-1:5,150,-1:10,150:8,-1:7,150:9,-1:9,15" +
"0:4,-1:5,150,-1:10,150:3,131,150:4,-1:7,150:9,-1:9,150:4,-1:5,150,-1:10,150" +
":3,146,150:4,-1:7,150:9,-1:9,150:4,-1:5,150,-1:10,150:8,-1:7,132,150:8,-1:9" +
",150:2,147,150,-1:5,150,-1:10,150:8,-1:7,150:9,-1:9,150:4,-1:5,150,-1:10,15" +
"0:7,133,-1:7,150:9,-1:9,150:4,-1:5,150,-1:10,150:7,148,-1:7,150:9,-1:9,149," +
"150:3,-1:5,150,-1:10,150:8,-1:7,150:9,-1:9,150:4,-1:5,150,-1:10,150:3,134,1" +
"50:4,-1:7,150:9,-1:9,150:4,-1:5,144,-1:10,150:8,-1:7,150:9,-1:9,150:4,-1:5," +
"150,-1:10,150,138,150:6,-1:7,150:9,-1:9,150:4,-1:5,145,-1:10,150:8,-1:7,150" +
":9,-1:9,150:4,-1:5,150,-1:10,150:3,151,150:4,-1:7,150:9,-1:9,150:4,-1:5,150" +
",-1:10,150:6,142,150,-1:7,150:9,-1:8");

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
						{ }
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
						{ return new Symbol(TokenIds.BITNOT,
                                new Token("^", yyline)); }
					case -20:
						break;
					case 20:
						{ if(new BigInteger(yytext()).compareTo(BigInteger.valueOf(2147483647)) == 1) {
                                return new Symbol(TokenIds.LEX_ERROR,
                                    new Token("Integer constant too big.", yyline)); }
                              return new Symbol(TokenIds.INT_CONST,
                                new Token(yytext(), yyline)); }
					case -21:
						break;
					case 21:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Illegal ID", yyline)); }
					case -22:
						break;
					case 22:
						{ return new Symbol(TokenIds.PLUS,
                                new Token("+", yyline)); }
					case -23:
						break;
					case 23:
						{ return new Symbol(TokenIds.MINUS,
                                new Token("-", yyline)); }
					case -24:
						break;
					case 24:
						{ return new Symbol(TokenIds.MODULUS,
                                new Token("%", yyline)); }
					case -25:
						break;
					case 25:
						{ return new Symbol(TokenIds.ASSIGN,
                                new Token("=", yyline)); }
					case -26:
						break;
					case 26:
						{ return new Symbol(TokenIds.SEMI,
                                new Token(";", yyline)); }
					case -27:
						break;
					case 27:
						{ return new Symbol(TokenIds.COMMA,
                                new Token(",", yyline)); }
					case -28:
						break;
					case 28:
						{ return new Symbol(TokenIds.DOT,
                                new Token(".", yyline)); }
					case -29:
						break;
					case 29:
						{ }
					case -30:
						break;
					case 30:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated multiline comment.", yyline)); }
					case -31:
						break;
					case 31:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -32:
						break;
					case 32:
						{ if(yytext().length()>5000){
                                return new Symbol(TokenIds.LEX_ERROR, new Token(
                                    "String constant over 5000 characters.", yyline)); }
                              return new Symbol(TokenIds.STRING_CONST,
                                new Token(yytext(), yyline)); }
					case -33:
						break;
					case 33:
						{ return new Symbol(TokenIds.STRING_CONST,
                                        new Token(yytext(), yyline)); }
					case -34:
						break;
					case 34:
						{ return new Symbol(TokenIds.IF,
                                new Token("IF", yyline)); }
					case -35:
						break;
					case 35:
						{ return new Symbol(TokenIds.NE,
                                new Token("!=", yyline)); }
					case -36:
						break;
					case 36:
						{ return new Symbol(TokenIds.SIGNEDLEFTSHIFT,
                                new Token("<<", yyline)); }
					case -37:
						break;
					case 37:
						{ return new Symbol(TokenIds.LEQ,
                                new Token("<=", yyline)); }
					case -38:
						break;
					case 38:
						{ return new Symbol(TokenIds.SIGNEDRIGHTSHIFT,
                                new Token(">>", yyline)); }
					case -39:
						break;
					case 39:
						{ return new Symbol(TokenIds.GEQ,
                                new Token(">=", yyline)); }
					case -40:
						break;
					case 40:
						{ return new Symbol(TokenIds.AND,
                                new Token("&&", yyline)); }
					case -41:
						break;
					case 41:
						{ return new Symbol(TokenIds.OR,
                                new Token("||", yyline)); }
					case -42:
						break;
					case 42:
						{ return new Symbol(TokenIds.INCR,
                                new Token("++", yyline)); }
					case -43:
						break;
					case 43:
						{ return new Symbol(TokenIds.DECR,
                                new Token("--", yyline)); }
					case -44:
						break;
					case 44:
						{ return new Symbol(TokenIds.EQ,
                                new Token("==", yyline)); }
					case -45:
						break;
					case 45:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("String constant spanning multiple lines.", yyline)); }
					case -46:
						break;
					case 46:
						{ return new Symbol(TokenIds.FOR,
                                new Token("FOR", yyline)); }
					case -47:
						break;
					case 47:
						{ return new Symbol(TokenIds.NEW,
                                new Token("NEW", yyline)); }
					case -48:
						break;
					case 48:
						{ return new Symbol(TokenIds.UNSIGNEDRIGHTSHIFT,
                                new Token(">>>", yyline)); }
					case -49:
						break;
					case 49:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -50:
						break;
					case 50:
						{ return new Symbol(TokenIds.BOOLEAN_CONST,
                                new Token(yytext(), yyline)); }
					case -51:
						break;
					case 51:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string.", yyline)); }
					case -52:
						break;
					case 52:
						{ return new Symbol(TokenIds.ELSE,
                                new Token("ELSE", yyline)); }
					case -53:
						break;
					case 53:
						{ return new Symbol(TokenIds.CLASS,
						        new Token("CLASS", yyline)); }
					case -54:
						break;
					case 54:
						{ return new Symbol(TokenIds.WHILE,
                                new Token("WHILE", yyline)); }
					case -55:
						break;
					case 55:
						{ return new Symbol(TokenIds.BREAK,
                                new Token("BREAK", yyline)); }
					case -56:
						break;
					case 56:
						{ return new Symbol(TokenIds.RETURN,
                                new Token("RETURN", yyline)); }
					case -57:
						break;
					case 57:
						{ return new Symbol(TokenIds.EXTENDS,
                                new Token("EXTENDS", yyline)); }
					case -58:
						break;
					case 58:
						{ return new Symbol(TokenIds.INSTANCEOF,
                                new Token("INSTANCEOF", yyline)); }
					case -59:
						break;
					case 60:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -60:
						break;
					case 61:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported character.", yyline)); }
					case -61:
						break;
					case 62:
						{ if(new BigInteger(yytext()).compareTo(BigInteger.valueOf(2147483647)) == 1) {
                                return new Symbol(TokenIds.LEX_ERROR,
                                    new Token("Integer constant too big.", yyline)); }
                              return new Symbol(TokenIds.INT_CONST,
                                new Token(yytext(), yyline)); }
					case -62:
						break;
					case 63:
						{ }
					case -63:
						break;
					case 64:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -64:
						break;
					case 65:
						{ return new Symbol(TokenIds.STRING_CONST,
                                        new Token(yytext(), yyline)); }
					case -65:
						break;
					case 66:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("String constant spanning multiple lines.", yyline)); }
					case -66:
						break;
					case 67:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -67:
						break;
					case 69:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -68:
						break;
					case 70:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported character.", yyline)); }
					case -69:
						break;
					case 71:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -70:
						break;
					case 72:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -71:
						break;
					case 74:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -72:
						break;
					case 75:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -73:
						break;
					case 77:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -74:
						break;
					case 79:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -75:
						break;
					case 81:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -76:
						break;
					case 83:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -77:
						break;
					case 85:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -78:
						break;
					case 87:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -79:
						break;
					case 89:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -80:
						break;
					case 91:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -81:
						break;
					case 117:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -82:
						break;
					case 118:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -83:
						break;
					case 119:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
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
					case 155:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -115:
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
