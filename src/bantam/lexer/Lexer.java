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
		/* 31 */ YY_NO_ANCHOR,
		/* 32 */ YY_NO_ANCHOR,
		/* 33 */ YY_END,
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
		/* 59 */ YY_NO_ANCHOR,
		/* 60 */ YY_NO_ANCHOR,
		/* 61 */ YY_NO_ANCHOR,
		/* 62 */ YY_NO_ANCHOR,
		/* 63 */ YY_NO_ANCHOR,
		/* 64 */ YY_NOT_ACCEPT,
		/* 65 */ YY_NO_ANCHOR,
		/* 66 */ YY_NO_ANCHOR,
		/* 67 */ YY_NO_ANCHOR,
		/* 68 */ YY_NO_ANCHOR,
		/* 69 */ YY_END,
		/* 70 */ YY_NO_ANCHOR,
		/* 71 */ YY_NO_ANCHOR,
		/* 72 */ YY_NO_ANCHOR,
		/* 73 */ YY_NOT_ACCEPT,
		/* 74 */ YY_NO_ANCHOR,
		/* 75 */ YY_NO_ANCHOR,
		/* 76 */ YY_END,
		/* 77 */ YY_NO_ANCHOR,
		/* 78 */ YY_NOT_ACCEPT,
		/* 79 */ YY_NO_ANCHOR,
		/* 80 */ YY_END,
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
		/* 92 */ YY_NO_ANCHOR,
		/* 93 */ YY_NOT_ACCEPT,
		/* 94 */ YY_NO_ANCHOR,
		/* 95 */ YY_NOT_ACCEPT,
		/* 96 */ YY_NO_ANCHOR,
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
		/* 117 */ YY_NOT_ACCEPT,
		/* 118 */ YY_NOT_ACCEPT,
		/* 119 */ YY_NOT_ACCEPT,
		/* 120 */ YY_NOT_ACCEPT,
		/* 121 */ YY_NOT_ACCEPT,
		/* 122 */ YY_NO_ANCHOR,
		/* 123 */ YY_END,
		/* 124 */ YY_NO_ANCHOR,
		/* 125 */ YY_NOT_ACCEPT,
		/* 126 */ YY_NOT_ACCEPT,
		/* 127 */ YY_NOT_ACCEPT,
		/* 128 */ YY_NOT_ACCEPT,
		/* 129 */ YY_NOT_ACCEPT,
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
		/* 155 */ YY_NO_ANCHOR,
		/* 156 */ YY_NO_ANCHOR,
		/* 157 */ YY_NO_ANCHOR,
		/* 158 */ YY_NO_ANCHOR,
		/* 159 */ YY_NO_ANCHOR,
		/* 160 */ YY_NO_ANCHOR
	};
	private int yy_cmap[] = unpackFromString(1,130,
"14:9,11,8,14,11,8,14:18,52,29,9,14:2,48,32,13,19,20,6,45,50,47,51,5,41,42:9" +
",14,49,30,46,31,14:2,44:26,17,7,18,34,43,14,3,37,1,40,24,25,44,22,23,44,38," +
"2,44,28,26,44:2,27,4,10,36,44,21,39,44:2,15,33,16,35,14,0,12")[0];

	private int yy_rmap[] = unpackFromString(1,161,
"0,1,2,3,4,1:8,5,6,7,8,9,1:2,10:2,11,12,13,14,1:3,15,16,1:2,17,18,1,19,1:3,2" +
"0,1:10,19:2,1,21,19,1,19:7,22,23,22,24,1:2,25,26,27,28,29,30,31,32,25,33,34" +
",35,36,37,38,39,40,41,42,43,44,17,45,46,47,18,48,49,50,51,52,53,54,55,21,56" +
",57,58,31,34,26,27,59,60,61,62,63,64,65,66,67,68,69,70,26,71,72,65,70,32,73" +
",74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,19" +
",98,99,100,101,102")[0];

	private int yy_nxt[][] = unpackFromString(103,53,
"1,2,155:3,3,4,5,6,66,140,6,1,75,5,7,8,9,10,11,12,157,155,65,141,122,155,159" +
",130,13,14,15,16,17,18,19,155,160,155:3,20,67,21,155,22,23,24,25,26,27,28,6" +
",-1:54,155,142,155:2,-1:5,155,-1:10,155:8,-1:7,155:9,-1:13,29,30,-1:39,31,-" +
"1:52,32,-1:52,37,-1:36,38,-1:15,39,-1:37,40,-1:14,41,-1:38,42,-1:53,43,-1:2" +
"0,21:4,-1:5,21,-1:10,21:8,-1:7,21:9,-1:53,44,45,-1:52,46,-1:52,47,48,-1:51," +
"49,-1:7,29:7,-1,29:3,-1,29:40,-1,30:4,83,85,30:5,-1,30:40,-1,91:6,93,33,50," +
"91:2,69,91:40,-1,95:6,97,-1,95:3,-1,95:40,-1,155:4,-1:5,155,-1:10,155:8,-1:" +
"7,155:9,-1:39,53,-1:22,104:6,105,-1,54,104:2,-1,104:40,-1,64:6,73,33,34,64:" +
"2,69,64:40,-1,155:4,-1:5,155,-1:10,155:4,36,155:2,144,-1:7,155:9,-1:9,21:4," +
"-1:5,21,-1:10,21:8,-1:7,21:5,67:2,21:2,-1:21,35,-1:40,110:7,-1,124,110:2,-1" +
",110:40,-1,111:6,115,103,54,111:2,-1,111:40,-1,87:6,125,76,89,64,87,69,87:1" +
"2,64,87,64:2,87:24,-1,155:4,-1:5,155,-1:10,155:6,51,155,-1:7,155:9,-1:9,78:" +
"6,81,-1,78:2,-1:2,35,78:39,-1,100:6,101,80,124,100:2,69,100:40,-1,129:6,120" +
",103,71,129:2,-1,129:40,-1,155:4,-1:5,155,-1:10,52,155:7,-1:7,155:9,-1:9,10" +
"9:7,80,-1,109:2,69,109:40,-1,98:6,-1,98,-1,78,98,-1,70,98:11,78,98,78:2,98:" +
"24,-1,155:4,-1:5,155,-1:10,155:3,55,155:4,-1:7,155:9,-1:9,83:5,85,83:5,-1,8" +
"3:40,-1,155:4,-1:5,155,-1:10,155:3,57,155:4,-1:7,155:9,-1:9,83:4,68,85,83:5" +
",-1,83:40,-1,155:3,58,-1:5,155,-1:10,155:8,-1:7,155:9,-1:9,87:6,99,33,54,87" +
":2,69,87:40,-1,155:4,-1:5,155,-1:10,155:3,59,155:4,-1:7,155:9,-1:9,89:6,102" +
",103,34,89:2,-1,89:40,-1,155:4,-1:5,155,-1:10,155:8,-1:7,155:2,60,155:6,-1:" +
"9,155:4,-1:5,155,-1:10,155:7,61,-1:7,155:9,-1:9,91:7,80,103,91:2,69,91:40,-" +
"1,155:3,62,-1:5,155,-1:10,155:8,-1:7,155:9,-1:9,155:4,-1:5,155,-1:10,155:4," +
"63,155:3,-1:7,155:9,-1:9,104:6,97,127,95:2,104,-1,104:12,95,104,95:2,104:24" +
",-1:13,56,-1:40,87:6,126,76,72,87:2,69,87:40,-1,100:7,80,124,100:2,69,100:4" +
"0,-1,108:6,100,76,124,100,108,69,108:12,100,108,100:2,108:24,-1,111:6,112,1" +
"27,89:2,111,-1,111:12,89,111,89:2,111:24,-1,103:6,113,103,50,103:2,-1,103:4" +
"0,-1,104:6,105,127,54,104:2,-1,104:40,-1,106:6,116,33,71,106:2,69,106:40,-1" +
",128:6,106,76,77,106,128,69,128:12,106,128,106:2,128:24,-1,111:6,102,117,34" +
",89,111,-1,111:12,89,111,89:2,111:24,-1,103:7,-1,103:3,-1,103:40,-1,118:6,1" +
"10,127,124,110,118,-1,118:12,110,118,110:2,118:24,-1,111:6,119,127,72,111:2" +
",-1,111:40,-1,106:7,80,77,106:2,69,106:40,-1,129:6,121,103,71,129:2,-1,129:" +
"40,-1,110:6,114,-1,124,110:2,-1,110:40,-1,111:6,115,117,54,111:2,-1,111:40," +
"-1,129:7,-1,77,129:2,-1,129:40,-1,117:6,129,127,77,129,117,-1,117:12,129,11" +
"7,129:2,117:24,-1,155:2,146,155,-1:5,155,-1:10,155:5,74,155:2,-1:7,155:9,-1" +
":9,106:6,107,33,71,106:2,69,106:40,-1,87:6,73,123,34,64,87,69,87:12,64,87,6" +
"4:2,87:24,-1,87:6,99,123,54,87:2,69,87:40,-1,155:4,-1:5,155,-1:10,155:3,79," +
"155:4,-1:7,155:9,-1:9,155:4,-1:5,155,-1:10,155:8,-1:7,82,155:8,-1:9,155:3,8" +
"4,-1:5,155,-1:10,155:8,-1:7,155:9,-1:9,155:3,86,-1:5,155,-1:10,155:8,-1:7,1" +
"55:9,-1:9,155,88,155:2,-1:5,155,-1:10,155:8,-1:7,155:9,-1:9,155:3,82,-1:5,1" +
"55,-1:10,155:8,-1:7,155:9,-1:9,155:2,90,155,-1:5,155,-1:10,155:8,-1:7,155:9" +
",-1:9,155:4,-1:5,155,-1:10,155:6,92,155,-1:7,155:9,-1:9,155:4,-1:5,155,-1:1" +
"0,155:8,-1:7,155:4,94,155:4,-1:9,155:4,-1:5,155,-1:10,155:5,96,155:2,-1:7,1" +
"55:9,-1:9,155:4,-1:5,155,-1:10,155:6,131,155,-1:7,155:9,-1:9,155,132,155:2," +
"-1:5,155,-1:10,155:8,-1:7,155:3,145,155:5,-1:9,155:2,133,155,-1:5,155,-1:10" +
",155:8,-1:7,155:9,-1:9,155:4,-1:5,155,-1:10,155:2,134,155:5,-1:7,155:9,-1:9" +
",155:3,158,-1:5,155,-1:10,155:8,-1:7,155:9,-1:9,155:4,-1:5,148,-1:10,155:8," +
"-1:7,155:9,-1:9,155,135,155:2,-1:5,155,-1:10,155:8,-1:7,155:9,-1:9,155:4,-1" +
":5,155,-1:10,155:3,136,155:4,-1:7,155:9,-1:9,155:4,-1:5,155,-1:10,155:3,151" +
",155:4,-1:7,155:9,-1:9,155:4,-1:5,155,-1:10,155:8,-1:7,137,155:8,-1:9,155:2" +
",152,155,-1:5,155,-1:10,155:8,-1:7,155:9,-1:9,155:4,-1:5,155,-1:10,155:7,13" +
"8,-1:7,155:9,-1:9,155:4,-1:5,155,-1:10,155:7,153,-1:7,155:9,-1:9,154,155:3," +
"-1:5,155,-1:10,155:8,-1:7,155:9,-1:9,155:4,-1:5,155,-1:10,155:3,139,155:4,-" +
"1:7,155:9,-1:9,155:4,-1:5,149,-1:10,155:8,-1:7,155:9,-1:9,155:4,-1:5,155,-1" +
":10,155,143,155:6,-1:7,155:9,-1:9,155:4,-1:5,150,-1:10,155:8,-1:7,155:9,-1:" +
"9,155:4,-1:5,155,-1:10,155:3,156,155:4,-1:7,155:9,-1:9,155:4,-1:5,155,-1:10" +
",155:6,147,155,-1:7,155:9,-1:8");

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
						{ return new Symbol(TokenIds.ASSIGN,
                                new Token("=", yyline)); }
					case -24:
						break;
					case 24:
						{ return new Symbol(TokenIds.MINUS,
                                new Token("-", yyline)); }
					case -25:
						break;
					case 25:
						{ return new Symbol(TokenIds.MODULUS,
                                new Token("%", yyline)); }
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
						{ return new Symbol(TokenIds.DIVASSIGN,
                                new Token("=", yyline)); }
					case -32:
						break;
					case 32:
						{ return new Symbol(TokenIds.TIMESASSIGN,
                                new Token("=", yyline)); }
					case -33:
						break;
					case 33:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -34:
						break;
					case 34:
						{ if(yytext().length()>5000){
                                return new Symbol(TokenIds.LEX_ERROR, new Token(
                                    "String constant over 5000 characters.", yyline)); }
                              return new Symbol(TokenIds.STRING_CONST,
                                new Token(yytext(), yyline)); }
					case -35:
						break;
					case 35:
						{ return new Symbol(TokenIds.STRING_CONST,
                                        new Token(yytext(), yyline)); }
					case -36:
						break;
					case 36:
						{ return new Symbol(TokenIds.IF,
                                new Token("IF", yyline)); }
					case -37:
						break;
					case 37:
						{ return new Symbol(TokenIds.NE,
                                new Token("!=", yyline)); }
					case -38:
						break;
					case 38:
						{ return new Symbol(TokenIds.SIGNEDLEFTSHIFT,
                                new Token("<<", yyline)); }
					case -39:
						break;
					case 39:
						{ return new Symbol(TokenIds.LEQ,
                                new Token("<=", yyline)); }
					case -40:
						break;
					case 40:
						{ return new Symbol(TokenIds.SIGNEDRIGHTSHIFT,
                                new Token(">>", yyline)); }
					case -41:
						break;
					case 41:
						{ return new Symbol(TokenIds.GEQ,
                                new Token(">=", yyline)); }
					case -42:
						break;
					case 42:
						{ return new Symbol(TokenIds.AND,
                                new Token("&&", yyline)); }
					case -43:
						break;
					case 43:
						{ return new Symbol(TokenIds.OR,
                                new Token("||", yyline)); }
					case -44:
						break;
					case 44:
						{ return new Symbol(TokenIds.INCR,
                                new Token("++", yyline)); }
					case -45:
						break;
					case 45:
						{ return new Symbol(TokenIds.PLUSASSIGN,
                                new Token("=", yyline)); }
					case -46:
						break;
					case 46:
						{ return new Symbol(TokenIds.EQ,
                                new Token("==", yyline)); }
					case -47:
						break;
					case 47:
						{ return new Symbol(TokenIds.MINUSASSIGN,
                                new Token("=", yyline)); }
					case -48:
						break;
					case 48:
						{ return new Symbol(TokenIds.DECR,
                                new Token("--", yyline)); }
					case -49:
						break;
					case 49:
						{ return new Symbol(TokenIds.MODASSIGN,
                                new Token("=", yyline)); }
					case -50:
						break;
					case 50:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("String constant spanning multiple lines.", yyline)); }
					case -51:
						break;
					case 51:
						{ return new Symbol(TokenIds.FOR,
                                new Token("FOR", yyline)); }
					case -52:
						break;
					case 52:
						{ return new Symbol(TokenIds.NEW,
                                new Token("NEW", yyline)); }
					case -53:
						break;
					case 53:
						{ return new Symbol(TokenIds.UNSIGNEDRIGHTSHIFT,
                                new Token(">>>", yyline)); }
					case -54:
						break;
					case 54:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -55:
						break;
					case 55:
						{ return new Symbol(TokenIds.BOOLEAN_CONST,
                                new Token(yytext(), yyline)); }
					case -56:
						break;
					case 56:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string.", yyline)); }
					case -57:
						break;
					case 57:
						{ return new Symbol(TokenIds.ELSE,
                                new Token("ELSE", yyline)); }
					case -58:
						break;
					case 58:
						{ return new Symbol(TokenIds.CLASS,
						        new Token("CLASS", yyline)); }
					case -59:
						break;
					case 59:
						{ return new Symbol(TokenIds.WHILE,
                                new Token("WHILE", yyline)); }
					case -60:
						break;
					case 60:
						{ return new Symbol(TokenIds.BREAK,
                                new Token("BREAK", yyline)); }
					case -61:
						break;
					case 61:
						{ return new Symbol(TokenIds.RETURN,
                                new Token("RETURN", yyline)); }
					case -62:
						break;
					case 62:
						{ return new Symbol(TokenIds.EXTENDS,
                                new Token("EXTENDS", yyline)); }
					case -63:
						break;
					case 63:
						{ return new Symbol(TokenIds.INSTANCEOF,
                                new Token("INSTANCEOF", yyline)); }
					case -64:
						break;
					case 65:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -65:
						break;
					case 66:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported character.", yyline)); }
					case -66:
						break;
					case 67:
						{ if(new BigInteger(yytext()).compareTo(BigInteger.valueOf(2147483647)) == 1) {
                                return new Symbol(TokenIds.LEX_ERROR,
                                    new Token("Integer constant too big.", yyline)); }
                              return new Symbol(TokenIds.INT_CONST,
                                new Token(yytext(), yyline)); }
					case -67:
						break;
					case 68:
						{ }
					case -68:
						break;
					case 69:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -69:
						break;
					case 70:
						{ return new Symbol(TokenIds.STRING_CONST,
                                        new Token(yytext(), yyline)); }
					case -70:
						break;
					case 71:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("String constant spanning multiple lines.", yyline)); }
					case -71:
						break;
					case 72:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -72:
						break;
					case 74:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -73:
						break;
					case 75:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported character.", yyline)); }
					case -74:
						break;
					case 76:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -75:
						break;
					case 77:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
					case -76:
						break;
					case 79:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -77:
						break;
					case 80:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -78:
						break;
					case 82:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -79:
						break;
					case 84:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -80:
						break;
					case 86:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -81:
						break;
					case 88:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -82:
						break;
					case 90:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -83:
						break;
					case 92:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -84:
						break;
					case 94:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -85:
						break;
					case 96:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -86:
						break;
					case 122:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -87:
						break;
					case 123:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unterminated string constant.", yyline)); }
					case -88:
						break;
					case 124:
						{ return new Symbol(TokenIds.LEX_ERROR,
                                new Token("Unsupported escape character within a string", yyline)); }
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
					case 156:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -116:
						break;
					case 157:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -117:
						break;
					case 158:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -118:
						break;
					case 159:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -119:
						break;
					case 160:
						{ return new Symbol(TokenIds.ID,
                                new Token(yytext(), yyline)); }
					case -120:
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
