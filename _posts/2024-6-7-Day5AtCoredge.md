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

- '#!/bin/bash'

- '# Hello this is single line comment.'

- '<< Hello this is multi line comment ends with
Hello'


**2.Variables**

->Variables are like containers that hold data. It may be string,float,integer,etc.
**1.Local Variable**
**2.Constant Variables**



**Example of Local Variable**
Name="Aadil Islam"

echo $Name

It will print the value inside the variable Name.

**Example of Constant Variable**

readonly college="Rajshree Group Of Institute"
echo $college

**3.Arrays**

Array is a data structure that allows you to **store multiple values in a single variable**.
It is generally written inside the parenthesis that is **()** .

**Example of array**
myArr=( 1  2 3 hello "Hey man" )

**How to extract values from it**
echo "${myArr[0]}"
echo "${myArr[1]}"

**Some Operations to do on array**

arr=( 1 2 3 hello "Aadil Islam" )

echo ${arr[0]}  #It gives the value from 1st index.

echo ${arr[*]:0:4} #It gives the values from 0th index to 3rd index.

echo ${#arr[*]} #It gives the total number of character in an array.

**How to add characters in array.**

arr+=( 5 6 7 8 )

echo ${arr[*]}

declare -A array

array=( [name]=paul [age]=22 )

echo ${array[name]}

**4.String Operation**

A string is a sequence of characters treated as a single piece of text. Strings can include letters, numbers, symbols, and spaces. They are used to store and manipulate text data within scripts. Strings are typically defined by enclosing the text in single quotes (') to preserve literal values or double quotes (") to allow variable and special character interpretation.

***
#!/bin/bash
***
myvar="Hello World"

length=${#myvar} # For printing the length of the variable.

upper=${myvar^^} # For printing the variable in upper case.

replace=${myvar/World/Aadil} # Replace the word

slice=${myvar:6:11}


**Difference between For Loop and While Loop**
**For Loop**
It is used when you know in advance how many times you want to execute a statement or a block of statements.

It is used when the number of iteration is known.

We can use for loop when we know the list or range of items to iterate over.

**While Loop**
It is used when the number of iteration is not known.

Means when you don't know about how many times you want to execute a statement or a block of statements.

While loop is used when we have to work with condition like the code executes untill the condition is true.

