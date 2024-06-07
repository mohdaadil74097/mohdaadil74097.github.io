---
 layout: post
 title: Day 5 At Coredge as a linux admin trainee
 date: 2024-6-7
---

**It's day five as a Linux Admin Trainee at Coredge and it is a great day!**

I am doing my task which is given by Satya my Trainer.

Here is  my today's task to do research on **Shell Scripting**


**What is Shell Scripting**

Shell scripting is a way to automate tasks on your computer using a plain text file with a series of commands. Think of it as writing a list of instructions for the computer to follow. Here's a simple breakdown:

**Shell**
This is a program that takes your commands and tells the computer what to do. 
It's like a translator between you and the machine. Examples include Bash, Zsh,and Sh.
**Types of Shell**
Bash, ksh, csh, zsh, fish, sh.

**Script**
This is just a text file with executable permission, where you can write some executable commands to do your tasks. When you run this file,the shell reads it and executes the commands in order written by the user.

**Automation**
By putting commands in a script, you can automate repetitive tasks. For example, if you need to back up files every day, you can write a script to do it for you instead of typing the commands manually every day.

**Rules For Making a Shell Script**
1. Create and open file with '.sh' extension in text editor like 'vim' or 'nano'.
2. Start with shebang line and save the file After writing some code in it.
3. Make the file executable by giving permission chmod u+x 'filename'. 
4. Run a script by typing one of the following command.
- (i) . 'filename'.
- (ii) bash 'filename'.
- (iii) Just give the full path of the file that is absolute path.
5. Ctrl+C is used to stop the running script.
6. Ctrl+Z is used to stop a running script.

**Example of Basic Script**

#!/bin/bash  -> Shebang Line.

**echo "Hello I am Aadil Islam"**


**Topics which we will discuss in the shell scripting**


**1.Comments**
Comments are used to give a context to the user. Comment is generally starts wiht 

#And the comment which you want to give, 

<<Multi Line Comment
Multi

**Example**

'#!/bin/bash'

'# Hello this is single line comment.'

'<< Hello this is multi line comment ends with
Hello'


**2.Variables**

->Variables are like containers that hold data. It may be string,float,integer,etc.

**Example**
Name="Aadil Islam"

echo $Name

It will print the value inside the variable Name.



