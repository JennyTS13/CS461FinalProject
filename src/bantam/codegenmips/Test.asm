	# Author: Tiffany Lam, Jenny Lin
	# Date: May 10, 2017
	# Compiled from sources: 
	# 	testfiles/Test.btm

	.data
	.globl	gc_flag
	.globl	class_name_table

	# Garbage collection flag
gc_flag:
	.word	0

	# String Constants
String_const_0:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	1
	.ascii	"a"
	.byte	0
	.align	2
String_const_1:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	4
	.ascii	"true"
	.byte	0
	.align	2
String_const_2:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	5
	.ascii	"false"
	.byte	0
	.align	2
String_const_3:
	.word	1
	.word	32
	.word	String_dispatch_table
	.word	14
	.ascii	"TestSuperClass"
	.byte	0
	.align	2
String_const_4:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	3
	.ascii	"abc"
	.byte	0
	.align	2
String_const_5:
	.word	1
	.word	36
	.word	String_dispatch_table
	.word	17
	.ascii	"FunctionalityTest"
	.byte	0
	.align	2
String_const_6:
	.word	1
	.word	68
	.word	String_dispatch_table
	.word	51
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking that fields are instantiated correctly."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_7:
	.word	1
	.word	40
	.word	String_dispatch_table
	.word	22
	.ascii	"expected: 13; actual: "
	.byte	0
	.align	2
String_const_8:
	.word	1
	.word	44
	.word	String_dispatch_table
	.word	24
	.ascii	""
	.byte	0xA
	.ascii	"expected: abc; actual: "
	.byte	0
	.align	2
String_const_9:
	.word	1
	.word	76
	.word	String_dispatch_table
	.word	56
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking that variable values are assigned correctly."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_10:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	33
	.ascii	"int i = 0 "
	.byte	0x9
	.ascii	" expected: 0; actual: "
	.byte	0
	.align	2
String_const_11:
	.word	1
	.word	48
	.word	String_dispatch_table
	.word	30
	.ascii	""
	.byte	0xA
	.ascii	"i = 7 "
	.byte	0x9
	.ascii	" expected: 7; actual: "
	.byte	0
	.align	2
String_const_12:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	36
	.ascii	""
	.byte	0xA
	.ascii	"integer = 3 "
	.byte	0x9
	.ascii	" expected: 3; actual: "
	.byte	0
	.align	2
String_const_13:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	42
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking binary arithmetic expressions."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_14:
	.word	1
	.word	64
	.word	String_dispatch_table
	.word	45
	.ascii	"integer from test class "
	.byte	0x9
	.ascii	" expect: 13 actual: "
	.byte	0
	.align	2
String_const_15:
	.word	1
	.word	64
	.word	String_dispatch_table
	.word	47
	.ascii	""
	.byte	0xA
	.ascii	"integer from super class "
	.byte	0x9
	.ascii	" expect: 24 actual: "
	.byte	0
	.align	2
String_const_16:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	37
	.ascii	""
	.byte	0xA
	.ascii	"integer = 1 + 3 "
	.byte	0x9
	.ascii	" expect: 4 actual: "
	.byte	0
	.align	2
String_const_17:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	42
	.ascii	""
	.byte	0xA
	.ascii	"this.integer = 5 - 2 "
	.byte	0x9
	.ascii	" expect: 3 actual: "
	.byte	0
	.align	2
String_const_18:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	43
	.ascii	""
	.byte	0xA
	.ascii	"super.integer = 4 * 2 "
	.byte	0x9
	.ascii	" expect: 8 actual: "
	.byte	0
	.align	2
String_const_19:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	38
	.ascii	""
	.byte	0xA
	.ascii	"integer = 24 / 4 "
	.byte	0x9
	.ascii	" expect: 6 actual: "
	.byte	0
	.align	2
String_const_20:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	38
	.ascii	""
	.byte	0xA
	.ascii	"integer = 10 % 2 "
	.byte	0x9
	.ascii	" expect: 0 actual: "
	.byte	0
	.align	2
String_const_21:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	42
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking binary comparison expressions."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_22:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	39
	.ascii	"integer == 0 "
	.byte	0x9
	.ascii	" expected: true; actual: "
	.byte	0
	.align	2
String_const_23:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	40
	.ascii	""
	.byte	0xA
	.ascii	"integer >= 0 "
	.byte	0x9
	.ascii	" expected: true; actual: "
	.byte	0
	.align	2
String_const_24:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	40
	.ascii	""
	.byte	0xA
	.ascii	"integer > 0 "
	.byte	0x9
	.ascii	" expected: false; actual: "
	.byte	0
	.align	2
String_const_25:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	40
	.ascii	""
	.byte	0xA
	.ascii	"integer <= 0 "
	.byte	0x9
	.ascii	" expected: true; actual: "
	.byte	0
	.align	2
String_const_26:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	40
	.ascii	""
	.byte	0xA
	.ascii	"integer < 0 "
	.byte	0x9
	.ascii	" expected: false; actual: "
	.byte	0
	.align	2
String_const_27:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	41
	.ascii	""
	.byte	0xA
	.ascii	"integer != 0 "
	.byte	0x9
	.ascii	" expected: false; actual: "
	.byte	0
	.align	2
String_const_28:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	37
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking binary logic expressions."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_29:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	34
	.ascii	"t && f "
	.byte	0x9
	.ascii	" expected: false; actual: "
	.byte	0
	.align	2
String_const_30:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	34
	.ascii	""
	.byte	0xA
	.ascii	"t || f "
	.byte	0x9
	.ascii	" expected: true; actual: "
	.byte	0
	.align	2
String_const_31:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	42
	.ascii	""
	.byte	0xA
	.ascii	"3 << -1 "
	.byte	0x9
	.ascii	" expected: -2147483648; actual: "
	.byte	0
	.align	2
String_const_32:
	.word	1
	.word	72
	.word	String_dispatch_table
	.word	55
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking that break statements are working properly."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_33:
	.word	1
	.word	64
	.word	String_dispatch_table
	.word	44
	.ascii	"Should only print 12345 and repeats 3 times"
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_34:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	1
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_35:
	.word	1
	.word	80
	.word	String_dispatch_table
	.word	60
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking legal downcasting. Shouldn't change method called"
	.byte	0
	.align	2
String_const_36:
	.word	1
	.word	84
	.word	String_dispatch_table
	.word	66
	.ascii	""
	.byte	0xA
	.ascii	"superTest.getClassName(); "
	.byte	0x9
	.ascii	" expected: FunctionalityTest; actual: "
	.byte	0
	.align	2
String_const_37:
	.word	1
	.word	80
	.word	String_dispatch_table
	.word	61
	.ascii	""
	.byte	0xA
	.ascii	"test.getClassName(); "
	.byte	0x9
	.ascii	" expected: FunctionalityTest; actual: "
	.byte	0
	.align	2
String_const_38:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	33
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking constant expressions."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_39:
	.word	1
	.word	44
	.word	String_dispatch_table
	.word	26
	.ascii	"Should print "
	.byte	0x22
	.ascii	"abc String: "
	.byte	0
	.align	2
String_const_40:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	4
	.ascii	""
	.byte	0x22
	.ascii	"abc"
	.byte	0
	.align	2
String_const_41:
	.word	1
	.word	36
	.word	String_dispatch_table
	.word	19
	.ascii	""
	.byte	0xA
	.ascii	"Should print 123: "
	.byte	0
	.align	2
String_const_42:
	.word	1
	.word	40
	.word	String_dispatch_table
	.word	21
	.ascii	""
	.byte	0xA
	.ascii	"Should print false: "
	.byte	0
	.align	2
String_const_43:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	34
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking declaration statement."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_44:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	34
	.ascii	"int i = 0; "
	.byte	0x9
	.ascii	" expected: 0; actual: "
	.byte	0
	.align	2
String_const_45:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	39
	.ascii	""
	.byte	0xA
	.ascii	"int foo = 13; "
	.byte	0x9
	.ascii	" expected: 13; actual: "
	.byte	0
	.align	2
String_const_46:
	.word	1
	.word	68
	.word	String_dispatch_table
	.word	49
	.ascii	""
	.byte	0xA
	.ascii	"String alphabet = abc; "
	.byte	0x9
	.ascii	" expected: abc; actual: "
	.byte	0
	.align	2
String_const_47:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	33
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking dispatch expressions."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_48:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	33
	.ascii	"p.getX(); "
	.byte	0x9
	.ascii	" expected: 3; actual: "
	.byte	0
	.align	2
String_const_49:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	34
	.ascii	""
	.byte	0xA
	.ascii	"p.getY(); "
	.byte	0x9
	.ascii	" expected: 4; actual: "
	.byte	0
	.align	2
String_const_50:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	35
	.ascii	""
	.byte	0xA
	.ascii	"q.getX(); "
	.byte	0x9
	.ascii	" expected: 15; actual: "
	.byte	0
	.align	2
String_const_51:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	34
	.ascii	""
	.byte	0xA
	.ascii	"q.getY(); "
	.byte	0x9
	.ascii	" expected: 4; actual: "
	.byte	0
	.align	2
String_const_52:
	.word	1
	.word	76
	.word	String_dispatch_table
	.word	56
	.ascii	""
	.byte	0xA
	.ascii	"getClassName(); "
	.byte	0x9
	.ascii	" expected: FunctionalityTest; actual: "
	.byte	0
	.align	2
String_const_53:
	.word	1
	.word	80
	.word	String_dispatch_table
	.word	61
	.ascii	""
	.byte	0xA
	.ascii	"this.getClassName(); "
	.byte	0x9
	.ascii	" expected: FunctionalityTest; actual: "
	.byte	0
	.align	2
String_const_54:
	.word	1
	.word	76
	.word	String_dispatch_table
	.word	59
	.ascii	""
	.byte	0xA
	.ascii	"super.getClassName(); "
	.byte	0x9
	.ascii	" expected: TestSuperClass; actual: "
	.byte	0
	.align	2
String_const_55:
	.word	1
	.word	44
	.word	String_dispatch_table
	.word	27
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking for statements."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_56:
	.word	1
	.word	40
	.word	String_dispatch_table
	.word	21
	.ascii	"Should print 012345."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_57:
	.word	1
	.word	44
	.word	String_dispatch_table
	.word	26
	.ascii	""
	.byte	0xA
	.ascii	"Should print 0123456789."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_58:
	.word	1
	.word	44
	.word	String_dispatch_table
	.word	26
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking if statements."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_59:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	38
	.ascii	"expected: Printing from then; actual: "
	.byte	0
	.align	2
String_const_60:
	.word	1
	.word	36
	.word	String_dispatch_table
	.word	18
	.ascii	"Printing from then"
	.byte	0
	.align	2
String_const_61:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	39
	.ascii	""
	.byte	0xA
	.ascii	"expected: Printing from else; actual: "
	.byte	0
	.align	2
String_const_62:
	.word	1
	.word	36
	.word	String_dispatch_table
	.word	18
	.ascii	"Printing from else"
	.byte	0
	.align	2
String_const_63:
	.word	1
	.word	44
	.word	String_dispatch_table
	.word	24
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking instance of."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_64:
	.word	1
	.word	68
	.word	String_dispatch_table
	.word	48
	.ascii	"(s instanceof String) "
	.byte	0x9
	.ascii	" expected: true; actual: "
	.byte	0
	.align	2
String_const_65:
	.word	1
	.word	68
	.word	String_dispatch_table
	.word	49
	.ascii	""
	.byte	0xA
	.ascii	"(s instanceof Point) "
	.byte	0x9
	.ascii	" expected: false; actual: "
	.byte	0
	.align	2
String_const_66:
	.word	1
	.word	48
	.word	String_dispatch_table
	.word	28
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking new expressions."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_67:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	39
	.ascii	"p.equals(q) "
	.byte	0x9
	.ascii	" expected: false; actual: "
	.byte	0
	.align	2
String_const_68:
	.word	1
	.word	48
	.word	String_dispatch_table
	.word	30
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking return statements."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_69:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	41
	.ascii	"int x = p.getX(); "
	.byte	0x9
	.ascii	" expected: 3; actual: "
	.byte	0
	.align	2
String_const_70:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	42
	.ascii	""
	.byte	0xA
	.ascii	"int y = p.getY(); "
	.byte	0x9
	.ascii	" expected: 4; actual: "
	.byte	0
	.align	2
String_const_71:
	.word	1
	.word	48
	.word	String_dispatch_table
	.word	30
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking unary expressions."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_72:
	.word	1
	.word	64
	.word	String_dispatch_table
	.word	44
	.ascii	"textIO.putInt(i++); "
	.byte	0x9
	.ascii	" expected: 13; actual: "
	.byte	0
	.align	2
String_const_73:
	.word	1
	.word	48
	.word	String_dispatch_table
	.word	28
	.ascii	""
	.byte	0xA
	.ascii	"i; "
	.byte	0x9
	.ascii	" expected: 14; actual: "
	.byte	0
	.align	2
String_const_74:
	.word	1
	.word	64
	.word	String_dispatch_table
	.word	45
	.ascii	""
	.byte	0xA
	.ascii	"textIO.putInt(++i); "
	.byte	0x9
	.ascii	" expected: 15; actual: "
	.byte	0
	.align	2
String_const_75:
	.word	1
	.word	48
	.word	String_dispatch_table
	.word	28
	.ascii	""
	.byte	0xA
	.ascii	"i; "
	.byte	0x9
	.ascii	" expected: 15; actual: "
	.byte	0
	.align	2
String_const_76:
	.word	1
	.word	64
	.word	String_dispatch_table
	.word	45
	.ascii	""
	.byte	0xA
	.ascii	"textIO.putInt(i--); "
	.byte	0x9
	.ascii	" expected: 15; actual: "
	.byte	0
	.align	2
String_const_77:
	.word	1
	.word	64
	.word	String_dispatch_table
	.word	45
	.ascii	""
	.byte	0xA
	.ascii	"textIO.putInt(--i); "
	.byte	0x9
	.ascii	" expected: 13; actual: "
	.byte	0
	.align	2
String_const_78:
	.word	1
	.word	48
	.word	String_dispatch_table
	.word	28
	.ascii	""
	.byte	0xA
	.ascii	"i; "
	.byte	0x9
	.ascii	" expected: 13; actual: "
	.byte	0
	.align	2
String_const_79:
	.word	1
	.word	48
	.word	String_dispatch_table
	.word	30
	.ascii	""
	.byte	0xA
	.ascii	"i--; "
	.byte	0x9
	.ascii	" expected: 13; actual: "
	.byte	0
	.align	2
String_const_80:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	34
	.ascii	""
	.byte	0xA
	.ascii	"i = -i; "
	.byte	0x9
	.ascii	" expected: -13; actual: "
	.byte	0
	.align	2
String_const_81:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	36
	.ascii	""
	.byte	0xA
	.ascii	"t = !t; "
	.byte	0x9
	.ascii	" expected: false; actual: "
	.byte	0
	.align	2
String_const_82:
	.word	1
	.word	52
	.word	String_dispatch_table
	.word	33
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking variable expressions."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_83:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	38
	.ascii	"integer = 13; "
	.byte	0x9
	.ascii	" expected: 13; actual: "
	.byte	0
	.align	2
String_const_84:
	.word	1
	.word	56
	.word	String_dispatch_table
	.word	38
	.ascii	""
	.byte	0xA
	.ascii	"this.integer "
	.byte	0x9
	.ascii	" expected: 13; actual: "
	.byte	0
	.align	2
String_const_85:
	.word	1
	.word	60
	.word	String_dispatch_table
	.word	43
	.ascii	""
	.byte	0xA
	.ascii	"super.integer = 9; "
	.byte	0x9
	.ascii	" expected: 9; actual: "
	.byte	0
	.align	2
String_const_86:
	.word	1
	.word	48
	.word	String_dispatch_table
	.word	29
	.ascii	""
	.byte	0xA
	.ascii	""
	.byte	0xA
	.ascii	"Checking while statements."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2
String_const_87:
	.word	1
	.word	40
	.word	String_dispatch_table
	.word	20
	.ascii	"Should print 54321."
	.byte	0xA
	.ascii	""
	.byte	0
	.align	2

label0:
	.word	1
	.word	36
	.word	String_dispatch_table
	.word	16
	.ascii	"<built-in class>"
	.byte	0
	.align	2
label1:
	.word	1
	.word	36
	.word	String_dispatch_table
	.word	18
	.ascii	"testfiles/Test.btm"
	.byte	0
	.align	2

class_name_0:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	6
	.ascii	"Object"
	.byte	0
	.align	2
class_name_1:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	6
	.ascii	"String"
	.byte	0
	.align	2
class_name_2:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	3
	.ascii	"Sys"
	.byte	0
	.align	2
class_name_3:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	6
	.ascii	"TextIO"
	.byte	0
	.align	2
class_name_4:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	4
	.ascii	"Note"
	.byte	0
	.align	2
class_name_5:
	.word	1
	.word	28
	.word	String_dispatch_table
	.word	11
	.ascii	"MidiHandler"
	.byte	0
	.align	2
class_name_6:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	4
	.ascii	"Main"
	.byte	0
	.align	2
class_name_7:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	5
	.ascii	"Point"
	.byte	0
	.align	2
class_name_8:
	.word	1
	.word	32
	.word	String_dispatch_table
	.word	14
	.ascii	"TestSuperClass"
	.byte	0
	.align	2
class_name_9:
	.word	1
	.word	36
	.word	String_dispatch_table
	.word	17
	.ascii	"FunctionalityTest"
	.byte	0
	.align	2

class_name_table:
	.word	class_name_0
	.word	class_name_1
	.word	class_name_2
	.word	class_name_3
	.word	class_name_4
	.word	class_name_5
	.word	class_name_6
	.word	class_name_7
	.word	class_name_8
	.word	class_name_9
	.globl	Object_template
	.globl	String_template
	.globl	Sys_template
	.globl	TextIO_template
	.globl	Note_template
	.globl	MidiHandler_template
	.globl	Main_template
	.globl	Point_template
	.globl	TestSuperClass_template
	.globl	FunctionalityTest_template

Object_template:
	.word	0
	.word	12
	.word	Object_dispatch_table
String_template:
	.word	1
	.word	16
	.word	String_dispatch_table
	.word	0
Sys_template:
	.word	2
	.word	12
	.word	Sys_dispatch_table
TextIO_template:
	.word	3
	.word	20
	.word	TextIO_dispatch_table
	.word	0
	.word	0
Note_template:
	.word	4
	.word	28
	.word	Note_dispatch_table
	.word	0
	.word	0
	.word	0
	.word	0
MidiHandler_template:
	.word	5
	.word	12
	.word	MidiHandler_dispatch_table
Main_template:
	.word	6
	.word	16
	.word	Main_dispatch_table
	.word	0
Point_template:
	.word	7
	.word	20
	.word	Point_dispatch_table
	.word	0
	.word	0
TestSuperClass_template:
	.word	8
	.word	20
	.word	TestSuperClass_dispatch_table
	.word	0
	.word	0
FunctionalityTest_template:
	.word	9
	.word	36
	.word	FunctionalityTest_dispatch_table
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0

	.globl	MidiHandler_dispatch_table
	.globl	Note_dispatch_table
	.globl	FunctionalityTest_dispatch_table
	.globl	TextIO_dispatch_table
	.globl	TestSuperClass_dispatch_table
	.globl	Point_dispatch_table
	.globl	Object_dispatch_table
	.globl	Main_dispatch_table
	.globl	String_dispatch_table
	.globl	Sys_dispatch_table

Object_dispatch_table:
	.word	Object.clone
	.word	Object.equals
	.word	Object.toString
String_dispatch_table:
	.word	Object.clone
	.word	String.equals
	.word	String.toString
	.word	String.length
	.word	String.substring
	.word	String.concat
Sys_dispatch_table:
	.word	Object.clone
	.word	Object.equals
	.word	Object.toString
	.word	Sys.exit
	.word	Sys.time
	.word	Sys.random
TextIO_dispatch_table:
	.word	Object.clone
	.word	Object.equals
	.word	Object.toString
	.word	TextIO.readStdin
	.word	TextIO.readFile
	.word	TextIO.writeStdout
	.word	TextIO.writeStderr
	.word	TextIO.writeFile
	.word	TextIO.getString
	.word	TextIO.getInt
	.word	TextIO.putString
	.word	TextIO.putInt
Note_dispatch_table:
	.word	Object.clone
	.word	Object.equals
	.word	Object.toString
	.word	Note.setNoteAttributes
	.word	Note.getPitch
	.word	Note.getDuration
	.word	Note.getInstrument
	.word	Note.getVolume
MidiHandler_dispatch_table:
	.word	Object.clone
	.word	Object.equals
	.word	Object.toString
	.word	MidiHandler.play
	.word	MidiHandler.rest
Main_dispatch_table:
	.word	Object.clone
	.word	Object.equals
	.word	Object.toString
	.word	Main.main
Point_dispatch_table:
	.word	Point.clone
	.word	Object.equals
	.word	Object.toString
	.word	Point.getX
	.word	Point.getY
	.word	Point.setX
	.word	Point.setY
TestSuperClass_dispatch_table:
	.word	Object.clone
	.word	Object.equals
	.word	Object.toString
	.word	TestSuperClass.printBooleanValue
	.word	TestSuperClass.getClassName
FunctionalityTest_dispatch_table:
	.word	Object.clone
	.word	Object.equals
	.word	Object.toString
	.word	TestSuperClass.printBooleanValue
	.word	FunctionalityTest.getClassName
	.word	FunctionalityTest.testFieldInit
	.word	FunctionalityTest.testAssignExpr
	.word	FunctionalityTest.testBinaryArithExpr
	.word	FunctionalityTest.testBinaryCompExpr
	.word	FunctionalityTest.testBinaryLogicExpr
	.word	FunctionalityTest.testBreakStmt
	.word	FunctionalityTest.testCastExpr
	.word	FunctionalityTest.testConstExpr
	.word	FunctionalityTest.testDeclStmt
	.word	FunctionalityTest.testDispatchExpr
	.word	FunctionalityTest.testForStmt
	.word	FunctionalityTest.testIfStmt
	.word	FunctionalityTest.testInstanceof
	.word	FunctionalityTest.testNewExpr
	.word	FunctionalityTest.testReturnStmt
	.word	FunctionalityTest.testUnaryExpr
	.word	FunctionalityTest.testVarExpr
	.word	FunctionalityTest.testWhileStmt
	.word	FunctionalityTest.testAll

	.text
	.globl	main
	.globl	Main_init
	.globl	Main.main
main:
	jal __start

Object_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra
String_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# call parent's init
	jal Object_init
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra
Sys_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# call parent's init
	jal Object_init
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra
TextIO_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# call parent's init
	jal Object_init
	# initialing field: writeFD found at: Memory address: 16($a0)
	# evaluate field init value
	# load int value into $v0
	li $v0 1
	# save init value in $v0 to memory
	sw $v0 16($a0)
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra
Note_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# call parent's init
	jal Object_init
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra
MidiHandler_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# call parent's init
	jal Object_init
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra
Main_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# call parent's init
	jal Object_init
	# initialing field: s found at: Memory address: 12($a0)
	# evaluate field init value
	# load address of string constant label
	la $v0 String_const_0
	# save init value in $v0 to memory
	sw $v0 12($a0)
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra
Point_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# call parent's init
	jal Object_init
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra
TestSuperClass_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# call parent's init
	jal Object_init
	# initialing field: textIO found at: Memory address: 12($a0)
	# evaluate field init value
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 TextIO_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal TextIO_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# save init value in $v0 to memory
	sw $v0 12($a0)
	# initialing field: integer found at: Memory address: 16($a0)
	# evaluate field init value
	# load int value into $v0
	li $v0 24
	# save init value in $v0 to memory
	sw $v0 16($a0)
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra
FunctionalityTest_init:
	# Starting prolog for init
	add $sp $sp -8
	sw $ra 0($sp)
	sw $fp 4($sp)
	# call parent's init
	jal TestSuperClass_init
	# initialing field: textIO found at: Memory address: 20($a0)
	# evaluate field init value
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 TextIO_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal TextIO_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# save init value in $v0 to memory
	sw $v0 20($a0)
	# initialing field: integer found at: Memory address: 24($a0)
	# evaluate field init value
	# load int value into $v0
	li $v0 13
	# save init value in $v0 to memory
	sw $v0 24($a0)
	# initialing field: bool found at: Memory address: 28($a0)
	# evaluate field init value
	# load boolean value into $v0
	li $v0 -1
	# save init value in $v0 to memory
	sw $v0 28($a0)
	# initialing field: s found at: Memory address: 32($a0)
	# evaluate field init value
	# load address of string constant label
	la $v0 String_const_4
	# save init value in $v0 to memory
	sw $v0 32($a0)
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra

	# load address of string constant label
	la $v0 String_const_0

Main.main:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 1 local vars in the stack frame
	sub $fp $sp 4
	move $sp $fp

	# Now starts the body of method main
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 FunctionalityTest_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal FunctionalityTest_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable test
	sw $v0 0($fp)
	# code for call to testAll
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testAll
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 92($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 4
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

Point.getX:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method getX
	# evaluate return value
	# load variable from stack to $v0
	lw $v0 12($a0)
	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

Point.getY:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method getY
	# evaluate return value
	# load variable from stack to $v0
	lw $v0 16($a0)
	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

Point.setX:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method setX
	# evaluate right side of assign expr
	# load variable from stack to $v0
	lw $v0 8($fp)
	sw $v0 12($a0)

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 4
	# return from method
	jr $ra

Point.setY:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method setY
	# evaluate right side of assign expr
	# load variable from stack to $v0
	lw $v0 8($fp)
	sw $v0 16($a0)

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 4
	# return from method
	jr $ra

Point.clone:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 1 local vars in the stack frame
	sub $fp $sp 4
	move $sp $fp

	# Now starts the body of method clone
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 Point_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal Point_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable newPoint
	sw $v0 0($fp)
	# code for call to setX
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load field from stack to $v0
	lw $v0 12($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: setX
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 20($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to setY
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load field from stack to $v0
	lw $v0 16($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: setY
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 24($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate return value
	# load variable from stack to $v0
	lw $v0 0($fp)
	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 4
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 4
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 TextIO_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal TextIO_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# load int value into $v0
	li $v0 24

TestSuperClass.printBooleanValue:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method printBooleanValue
	# if statement
	# load variable from stack to $v0
	lw $v0 8($fp)
	# branch to else statement if predicate is false
	beq $zero $v0 label3
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 12($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# unconditional branch to end of IfStmt
	b label2

	# else statement
label3:
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 12($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# end of if statement
label2:

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 4
	# return from method
	jr $ra

TestSuperClass.getClassName:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method getClassName
	# evaluate return value
	# load address of string constant label
	la $v0 String_const_3
	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 TextIO_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal TextIO_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# load int value into $v0
	li $v0 13
	# load boolean value into $v0
	li $v0 -1
	# load address of string constant label
	la $v0 String_const_4

FunctionalityTest.getClassName:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method getClassName
	# evaluate return value
	# load address of string constant label
	la $v0 String_const_5
	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testFieldInit:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method testFieldInit
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 32($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testAssignExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 1 local vars in the stack frame
	sub $fp $sp 4
	move $sp $fp

	# Now starts the body of method testAssignExpr
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load int value into $v0
	li $v0 0
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable i
	sw $v0 0($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 7
	sw $v0 0($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 3
	sw $v0 24($a0)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 4
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testBinaryArithExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method testBinaryArithExpr
	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 13
	sw $v0 24($a0)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load field from stack to $v0
	lw $v0 16($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_16
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# binary arithmetic plus expr
	# evaluate left expr
	# load int value into $v0
	li $v0 1
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 3
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	add $v0 $v1 $v0
	sw $v0 24($a0)
	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_17
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# binary arithmetic minus expr
	# evaluate left expr
	# load int value into $v0
	li $v0 5
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 2
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	sub $v0 $v1 $v0
	sw $v0 24($a0)
	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# binary arithmetic times expr
	# evaluate left expr
	# load int value into $v0
	li $v0 4
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 2
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	mul $v0 $v1 $v0
	sw $v0 16($a0)
	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load field from stack to $v0
	lw $v0 16($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_19
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# binary arithmetic divide expr
	# evaluate left expr
	# load int value into $v0
	li $v0 24
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 4
	# throw divide by zero exception if divisor == 0
	beq $v0 $zero _divide_zero_error
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	div $v0 $v1 $v0
	sw $v0 24($a0)
	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_20
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# binary arithmetic modulus expr
	# evaluate left expr
	# load int value into $v0
	li $v0 10
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 2
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	rem $v0 $v1 $v0
	sw $v0 24($a0)
	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testBinaryCompExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method testBinaryCompExpr
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_21
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 0
	sw $v0 24($a0)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_22
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# != expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 0
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to eq label if left == right
	beq $v1 $v0 label4
	move $v0 $zero
	b label5
	# left expr == right expr
label4:
	li $v0 -1
label5:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_23
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# >= expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 0
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to geq label if left expr >= right expr
	bge $v1 $v0 label6
	move $v0 $zero
	b label7
	# left expr >= right expr
label6:
	li $v0 -1
label7:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_24
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# > expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 0
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to gt label if left expr > right expr
	bgt $v1 $v0 label8
	move $v0 $zero
	b label9
	# left expr > right expr
label8:
	li $v0 -1
label9:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_25
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# <= expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 0
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to leq label if left expr <= right expr
	ble $v1 $v0 label10
	move $v0 $zero
	b label11
	# left expr <= right expr
label10:
	li $v0 -1
label11:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 0
	sw $v0 24($a0)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_26
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# < expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 0
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to lt label if left expr < right expr
	blt $v1 $v0 label12
	move $v0 $zero
	b label13
	# left expr < right expr
label12:
	li $v0 -1
label13:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_27
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# != expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 0
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# if left != right, their difference != 0
	sub $v0 $v0 $v1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testBinaryLogicExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 2 local vars in the stack frame
	sub $fp $sp 8
	move $sp $fp

	# Now starts the body of method testBinaryLogicExpr
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_28
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load boolean value into $v0
	li $v0 -1
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable t
	sw $v0 0($fp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load boolean value into $v0
	li $v0 0
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable f
	sw $v0 4($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_29
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# binary logical AND expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 0($fp)
	# short-circuit & stop evaluation if left expr false
	beq $v0 $zero label14
	# evaluate right expr
	# load variable from stack to $v0
	lw $v0 4($fp)

	# end of AND expr
label14:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_30
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# binary logical OR expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 0($fp)
	# short-circuit & stop evaluation if left expr true
	bne $v0 $zero label15
	# evaluate right expr
	# load variable from stack to $v0
	lw $v0 4($fp)

	# end of OR expr
label15:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_31
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# binary signed left shift expr
	# evaluate right expr
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# if the right expr is 0, don't do any shifts
	beq $v0 $zero label16
	# push result of right expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate left expr
	# load int value into $v0
	li $v0 3
	# pop result of right expr off stack onto $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# shift left expr($v0) by $v1 bits
	sllv $v0 $v0 $v1
	# end of signed left shift expr
label16:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 8
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testBreakStmt:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 2 local vars in the stack frame
	sub $fp $sp 8
	move $sp $fp

	# Now starts the body of method testBreakStmt
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_32
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_33
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load int value into $v0
	li $v0 0
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable i
	sw $v0 0($fp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load int value into $v0
	li $v0 0
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable j
	sw $v0 4($fp)

	# for statement
	# for statement init
	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 0
	sw $v0 0($fp)
label17:
	# for statement predicate check
	# < expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 3
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to lt label if left expr < right expr
	blt $v1 $v0 label19
	move $v0 $zero
	b label20
	# left expr < right expr
label19:
	li $v0 -1
label20:
	# branch to end of ForStmt if predicate is false
	beq $zero $v0 label18

	# for statement
	# for statement init
	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 1
	sw $v0 4($fp)
label21:
	# for statement predicate check
	# < expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 4($fp)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 10
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to lt label if left expr < right expr
	blt $v1 $v0 label23
	move $v0 $zero
	b label24
	# left expr < right expr
label23:
	li $v0 -1
label24:
	# branch to end of ForStmt if predicate is false
	beq $zero $v0 label22
	# if statement
	# > expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 4($fp)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 5
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to gt label if left expr > right expr
	bgt $v1 $v0 label26
	move $v0 $zero
	b label27
	# left expr > right expr
label26:
	li $v0 -1
label27:
	# branch to end of IfStmt if predicate is false
	beq $zero $v0 label25
	# break out of loop
	b label22

	# end of if statement
label25:
	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 4($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate variable to increment
	# load variable from stack to $v0
	lw $v0 4($fp)
	# increment value in $v0 and store result in $v1
	add $v1 $v0 1
	# save incremented value into variable
	sw $v1 4($fp)
	# unconditional branch to beginning of ForStmt
	b label21

	# end of for statement
label22:
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_34
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate variable to increment
	# load variable from stack to $v0
	lw $v0 0($fp)
	# increment value in $v0 and store result in $v1
	add $v1 $v0 1
	# save incremented value into variable
	sw $v1 0($fp)
	# unconditional branch to beginning of ForStmt
	b label17

	# end of for statement
label18:

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 8
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testCastExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 2 local vars in the stack frame
	sub $fp $sp 8
	move $sp $fp

	# Now starts the body of method testCastExpr
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_35
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 FunctionalityTest_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal FunctionalityTest_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable superTest
	sw $v0 0($fp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load variable from stack to $v0
	lw $v0 0($fp)
	# expr to check cast type for is in $v0
	add $sp $sp -4
	sw $v0 0($sp)
	# load actual object type into $v0
	lw $v0 0($v0)
	# load target type start idx into $v1
	li $v1 9
	# branch to false if $v0 < $v1
	blt $v0 $v1 label29
	# load target type end idx into $v1
	li $v1 9
	# branch to false if $v0 > $v1
	bgt $v0 $v1 label29
	li $v0 -1
	b label28
	# throwing class cast exception
label29:
	# object's type id passed via $t0
	move $t0 $v0
	# target type id passed via $t1
	li $t1 9
	jal _class_cast_error
	# end of cast  expr
label28:
	lw $v0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable test
	sw $v0 4($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_36
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getClassName
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getClassName
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 16($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_37
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getClassName
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 4($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getClassName
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 16($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 8
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testConstExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method testConstExpr
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_38
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_39
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_41
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 123
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_42
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# load boolean value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testDeclStmt:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 3 local vars in the stack frame
	sub $fp $sp 12
	move $sp $fp

	# Now starts the body of method testDeclStmt
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_43
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load int value into $v0
	li $v0 0
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable i
	sw $v0 0($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_44
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load int value into $v0
	li $v0 13
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable foo
	sw $v0 4($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_45
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 4($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load address of string constant label
	la $v0 String_const_4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable alphabet
	sw $v0 8($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_46
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 8($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 12
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testDispatchExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 2 local vars in the stack frame
	sub $fp $sp 8
	move $sp $fp

	# Now starts the body of method testDispatchExpr
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_47
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 Point_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal Point_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable p
	sw $v0 0($fp)
	# code for call to setX
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: setX
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 20($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to setY
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: setY
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 24($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_48
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getX
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getX
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_49
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getY
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getY
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 16($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 Point_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal Point_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable q
	sw $v0 4($fp)
	# code for call to setX
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 4($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: setX
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 20($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to setY
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 4($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getY
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getY
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 16($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: setY
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 24($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getX
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 4($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getX
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_51
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getY
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 4($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getY
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 16($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_52
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getClassName
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getClassName
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 16($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_53
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getClassName
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# move reference to "this" obj to $v0
	move $v0 $a0
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getClassName
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 16($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_54
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to getClassName
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load reference to "this" obj to $v0
	la $v0 TestSuperClass_template
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getClassName
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 16($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 8
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testForStmt:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 1 local vars in the stack frame
	sub $fp $sp 4
	move $sp $fp

	# Now starts the body of method testForStmt
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_55
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_56
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load int value into $v0
	li $v0 0
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable i
	sw $v0 0($fp)

	# for statement
label30:
	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# if statement
	# != expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 5
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to eq label if left == right
	beq $v1 $v0 label33
	move $v0 $zero
	b label34
	# left expr == right expr
label33:
	li $v0 -1
label34:
	# branch to end of IfStmt if predicate is false
	beq $zero $v0 label32
	# break out of loop
	b label31

	# end of if statement
label32:
	# evaluate variable to increment
	# load variable from stack to $v0
	lw $v0 0($fp)
	# increment value in $v0 and store result in $v1
	add $v1 $v0 1
	# save incremented value into variable
	sw $v1 0($fp)
	# unconditional branch to beginning of ForStmt
	b label30

	# end of for statement
label31:
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_57
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# for statement
	# for statement init
	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 0
	sw $v0 0($fp)
label35:
	# for statement predicate check
	# < expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 10
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to lt label if left expr < right expr
	blt $v1 $v0 label37
	move $v0 $zero
	b label38
	# left expr < right expr
label37:
	li $v0 -1
label38:
	# branch to end of ForStmt if predicate is false
	beq $zero $v0 label36
	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate variable to increment
	# load variable from stack to $v0
	lw $v0 0($fp)
	# increment value in $v0 and store result in $v1
	add $v1 $v0 1
	# save incremented value into variable
	sw $v1 0($fp)
	# unconditional branch to beginning of ForStmt
	b label35

	# end of for statement
label36:

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 4
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testIfStmt:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method testIfStmt
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_58
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_59
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# if statement
	# load boolean value into $v0
	li $v0 -1
	# branch to end of IfStmt if predicate is false
	beq $zero $v0 label39
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_60
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# end of if statement
label39:
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_61
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# if statement
	# load boolean value into $v0
	li $v0 0
	# branch to else statement if predicate is false
	beq $zero $v0 label41
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_60
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# unconditional branch to end of IfStmt
	b label40

	# else statement
label41:
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_62
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# end of if statement
label40:

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testInstanceof:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 1 local vars in the stack frame
	sub $fp $sp 4
	move $sp $fp

	# Now starts the body of method testInstanceof
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_63
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load address of string constant label
	la $v0 String_const_4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable s
	sw $v0 0($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_64
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# expr to check instanceof is in $v0
	# load actual object type into $v0
	lw $v0 0($v0)
	# load target type start idx into $v1
	li $v1 1
	# branch to false if $v0 < $v1
	blt $v0 $v1 label43
	# load target type end idx into $v1
	li $v1 1
	# branch to false if $v0 > $v1
	bgt $v0 $v1 label43
	li $v0 -1
	b label42
	# evaluation to false for instance of
label43:
	move $v0 $zero
	# end of instance of expr
label42:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_65
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# expr to check instanceof is in $v0
	# load actual object type into $v0
	lw $v0 0($v0)
	# load target type start idx into $v1
	li $v1 7
	# branch to false if $v0 < $v1
	blt $v0 $v1 label45
	# load target type end idx into $v1
	li $v1 7
	# branch to false if $v0 > $v1
	bgt $v0 $v1 label45
	li $v0 -1
	b label44
	# evaluation to false for instance of
label45:
	move $v0 $zero
	# end of instance of expr
label44:
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 4
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testNewExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 2 local vars in the stack frame
	sub $fp $sp 8
	move $sp $fp

	# Now starts the body of method testNewExpr
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_66
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 Point_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal Point_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable p
	sw $v0 0($fp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 Point_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal Point_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable q
	sw $v0 4($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_67
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# code for call to equals
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 4($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: equals
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 4($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 8
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testReturnStmt:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 3 local vars in the stack frame
	sub $fp $sp 12
	move $sp $fp

	# Now starts the body of method testReturnStmt
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_68
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load prototype into $a0
	la $a0 Point_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal Point_init
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable p
	sw $v0 0($fp)
	# code for call to setX
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: setX
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 20($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to setY
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: setY
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 24($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# code for call to getX
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getX
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable x
	sw $v0 4($fp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# code for call to getY
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 0($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: getY
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 16($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable y
	sw $v0 8($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_69
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 4($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_70
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 8($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 12
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testUnaryExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 2 local vars in the stack frame
	sub $fp $sp 8
	move $sp $fp

	# Now starts the body of method testUnaryExpr
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_71
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load int value into $v0
	li $v0 13
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable i
	sw $v0 0($fp)
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load boolean value into $v0
	li $v0 -1
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable t
	sw $v0 4($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_72
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# evaluate variable to increment
	# load variable from stack to $v0
	lw $v0 0($fp)
	# increment value in $v0 and store result in $v1
	add $v1 $v0 1
	# save incremented value into variable
	sw $v1 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_73
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_74
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# evaluate variable to increment
	# load variable from stack to $v0
	lw $v0 0($fp)
	# increment value in $v0
	add $v0 $v0 1
	# save incremented value into variable
	sw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_75
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_76
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# evaluate variable to decrement
	# load variable from stack to $v0
	lw $v0 0($fp)
	# decrement value in $v0 and store result in $v1
	sub $v1 $v0 1
	# save decremented value into variable
	sw $v1 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_73
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_77
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# evaluate variable to decrement
	# load variable from stack to $v0
	lw $v0 0($fp)
	# decrement value in $v0
	sub $v0 $v0 1
	# save decremented value into variable
	sw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_78
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate variable to decrement
	# load variable from stack to $v0
	lw $v0 0($fp)
	# decrement value in $v0 and store result in $v1
	sub $v1 $v0 1
	# save decremented value into variable
	sw $v1 0($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_79
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# evaluate value to negate
	# load variable from stack to $v0
	lw $v0 0($fp)
	# negate value in $v0 
	neg $v0 $v0
	sw $v0 0($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_80
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# evaluate value to NOT
	# load variable from stack to $v0
	lw $v0 4($fp)
	# not value in $v0 
	not $v0 $v0
	sw $v0 4($fp)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_81
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to printBooleanValue
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 4($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: printBooleanValue
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 12($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 8
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testVarExpr:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method testVarExpr
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_82
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 13
	sw $v0 24($a0)
	# evaluate right side of assign expr
	# load int value into $v0
	li $v0 9
	sw $v0 16($a0)
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_83
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 24($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_84
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load field from stack to $v0
	lw $v0 24($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_85
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load field from stack to $v0
	lw $v0 16($a0)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testWhileStmt:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 1 local vars in the stack frame
	sub $fp $sp 4
	move $sp $fp

	# Now starts the body of method testWhileStmt
	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_86
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to putString
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load address of string constant label
	la $v0 String_const_87
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putString
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# load int value into $v0
	li $v0 5
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4
	# Initializing local variable i
	sw $v0 0($fp)

	# while statement
label46:
	# > expr
	# evaluate left expr
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push result of left expr onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate right expr
	# load int value into $v0
	li $v0 0
	# pop result of left expr off stack, into $v1
	lw $v1 0($sp)
	add $sp $sp 4
	# branch to gt label if left expr > right expr
	bgt $v1 $v0 label48
	move $v0 $zero
	b label49
	# left expr > right expr
label48:
	li $v0 -1
label49:
	# branch to end of WhileStmt if predicate is false
	beq $zero $v0 label47
	# code for call to putInt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 20($a0)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load variable from stack to $v0
	lw $v0 0($fp)
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: putInt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# evaluate variable to decrement
	# load variable from stack to $v0
	lw $v0 0($fp)
	# decrement value in $v0 and store result in $v1
	sub $v1 $v0 1
	# save decremented value into variable
	sw $v1 0($fp)
	# unconditional branch to beginning of WhileStmt
	b label46

	# end of while statement
label47:

	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 4
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

FunctionalityTest.testAll:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 0 local vars in the stack frame
	sub $fp $sp 0
	move $sp $fp

	# Now starts the body of method testAll
	# code for call to testFieldInit
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testFieldInit
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 20($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testAssignExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testAssignExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 24($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testBinaryArithExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testBinaryArithExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 28($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testBinaryCompExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testBinaryCompExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 32($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testBinaryLogicExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testBinaryLogicExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 36($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testBreakStmt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testBreakStmt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 40($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testCastExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testCastExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 44($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testConstExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testConstExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 48($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testDeclStmt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testDeclStmt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 52($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testDispatchExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testDispatchExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 56($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testForStmt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testForStmt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 60($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testIfStmt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testIfStmt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 64($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testInstanceof
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testInstanceof
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 68($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testNewExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testNewExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 72($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testReturnStmt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testReturnStmt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 76($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testUnaryExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testUnaryExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 80($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testVarExpr
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testVarExpr
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 84($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4

	# code for call to testWhileStmt
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $a0 0($sp)
	# Computing parameters and pushing onto stack
	# Loading obj ref into $a0
	lw $a0 0($sp)
	# Finding location of code to execute: testWhileStmt
	# ptr to vtf is the 3rd slot, 8 bytes down
	lw $t0 8($a0)
	# loading method location into $t0
	lw $t0 88($t0)
	# jump to the method in $t0
	jalr $t0
	# pop ref off the stack
	lw $a0 0($sp)
	add $sp $sp 4
	# Restoring important registers
	lw $s0 0($sp)
	add $sp $sp 4
	lw $a0 0($sp)
	add $sp $sp 4


	# Starting epilog of method
	# pop space for local vars
	add $sp $fp 0
	# pop the saved $s registers and $ra and $fp
	lw $fp 0($sp)
	add $sp $sp 4
	lw $ra 0($sp)
	add $sp $sp 4
	# pop actual parameters
	add $sp $sp 0
	# return from method
	jr $ra

