	# Author: Tiffany Lam, Jenny Lin
	# Date: May 10, 2017
	# Compiled from sources: 
	# 	composition/Composition.btm

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
	.ascii	"E"
	.byte	0
	.align	2
String_const_1:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	4
	.ascii	"Horn"
	.byte	0
	.align	2
String_const_2:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	1
	.ascii	"G"
	.byte	0
	.align	2
String_const_3:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	1
	.ascii	"B"
	.byte	0
	.align	2
String_const_4:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	1
	.ascii	"C"
	.byte	0
	.align	2
String_const_5:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	2
	.ascii	"Bb"
	.byte	0
	.align	2
String_const_6:
	.word	1
	.word	28
	.word	String_dispatch_table
	.word	8
	.ascii	"Clarinet"
	.byte	0
	.align	2
String_const_7:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	1
	.ascii	"D"
	.byte	0
	.align	2
String_const_8:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	1
	.ascii	"A"
	.byte	0
	.align	2
String_const_9:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	2
	.ascii	"F#"
	.byte	0
	.align	2
String_const_10:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	6
	.ascii	"Violin"
	.byte	0
	.align	2
String_const_11:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	4
	.ascii	"Oboe"
	.byte	0
	.align	2
String_const_12:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	5
	.ascii	"Flute"
	.byte	0
	.align	2
String_const_13:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	5
	.ascii	"Cello"
	.byte	0
	.align	2
String_const_14:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	2
	.ascii	"D#"
	.byte	0
	.align	2
String_const_15:
	.word	1
	.word	24
	.word	String_dispatch_table
	.word	5
	.ascii	"Viola"
	.byte	0
	.align	2
String_const_16:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	2
	.ascii	"C#"
	.byte	0
	.align	2
String_const_17:
	.word	1
	.word	20
	.word	String_dispatch_table
	.word	2
	.ascii	"E#"
	.byte	0
	.align	2
String_const_18:
	.word	1
	.word	28
	.word	String_dispatch_table
	.word	8
	.ascii	"Trombone"
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
	.word	44
	.word	String_dispatch_table
	.word	27
	.ascii	"composition/Composition.btm"
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

class_name_table:
	.word	class_name_0
	.word	class_name_1
	.word	class_name_2
	.word	class_name_3
	.word	class_name_4
	.word	class_name_5
	.word	class_name_6
	.globl	Object_template
	.globl	String_template
	.globl	Sys_template
	.globl	TextIO_template
	.globl	Note_template
	.globl	MidiHandler_template
	.globl	Main_template

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
	.word	12
	.word	Main_dispatch_table

	.globl	Note_dispatch_table
	.globl	String_dispatch_table
	.globl	Object_dispatch_table
	.globl	Sys_dispatch_table
	.globl	MidiHandler_dispatch_table
	.globl	Main_dispatch_table
	.globl	TextIO_dispatch_table

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
	# copy class ptr to $v0
	move $v0 $a0
	# Starting epilog for init
	lw $ra 0($sp)
	sw $fp 4($sp)
	add $sp $sp 8
	jr $ra


Main.main:
	# Starting prolog for method
	add $sp $sp -4
	sw $ra 0($sp)
	add $sp $sp -4
	sw $fp 0($sp)
	# add space for 3 local vars in the stack frame
	sub $fp $sp 12
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
	la $a0 Note_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal Note_init
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
	# Initializing local variable n1
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
	la $a0 Note_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal Note_init
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
	# Initializing local variable n2
	sw $v0 4($fp)
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
	la $a0 MidiHandler_template
	# clone the prototype
	jal Object.clone
	move $a0 $v0
	# calling init function to initialize fields
	jal MidiHandler_init
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
	# Initializing local variable midi
	sw $v0 8($fp)
	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 70
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 70
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 80
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 90
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 80
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_5
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_6
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 30
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 60
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 70
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 60
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 40
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 70
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 80
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 90
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_11
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 360
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 50
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_12
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 2
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 115
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 115
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 122
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 122
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 122
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 122
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_13
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 110
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_4
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_8
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 2
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_16
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_17
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_14
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_10
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 2
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_15
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 100
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 120
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_7
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1440
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1440
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 1440
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_9
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 720
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 240
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 960
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 160
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 160
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 160
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 160
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 160
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 160
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 160
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 160
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 160
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_3
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# evaluate value to negate
	# load int value into $v0
	li $v0 1
	# negate value in $v0 
	neg $v0 $v0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 480
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 2
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1920
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_1
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to setNoteAttributes
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
	# load address of string constant label
	la $v0 String_const_0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 0
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 1920
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load address of string constant label
	la $v0 String_const_18
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# load int value into $v0
	li $v0 125
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 20($sp)
	# Finding location of code to execute: setNoteAttributes
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to play
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
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
	# Finding location of code to execute: play
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

	# code for call to rest
	# Saving important registers
	add $sp $sp -4
	sw $a0 0($sp)
	add $sp $sp -4
	sw $s0 0($sp)
	# Computing DispatchExpr ref
	# load variable from stack to $v0
	lw $v0 8($fp)
	# temporarily push ref on the stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Computing parameters and pushing onto stack
	# load int value into $v0
	li $v0 1920
	# push param onto stack
	add $sp $sp -4
	sw $v0 0($sp)
	# Loading obj ref into $a0
	lw $a0 4($sp)
	# Finding location of code to execute: rest
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

