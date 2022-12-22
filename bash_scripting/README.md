## Bash Scripting
### Contents
[What is a shell ?](#what-is-a-shell)

[1. Basics of shell scripting](#1-basics-of-shell-scripting)

[2. Bash scripting](#2-starting-with-bash-scripting)

---
### What is a shell ?
A shell is a software program that acts like a layer( i.e., shell) on the top of the kernel (the engine of the OS). It interprets the users commands, communicates with the kernel and helps to execute the user commands.

User -->  Shell --> Kernel --> Hardware

- A shell may have it's own user interface or a CLI (command line interface). For example in windows Powershell has its own CLI.

- For linux **Terminal** is the CLI for the shell. 
- So we can write our commands on the terminal to interact with the shell.
- Or, we can also write a ```example.sh``` executable file to deploy the shell for a task.

There are different languages and syntax for shell scripting, used for different purposes accordingly. For example Bash, Xonsh etc.
- When Bash language is used the shell is called a Bash shell. 
- When Xonsh language (python based syntax) is used then the shell is called a Xonsh shell or a python shell.
- Some other examples of shell are sh(bourne shell), csh(c shell), tcsh(turbo c shell) etc.

**Note: Bash is default shell in most of the linux based Operating system including Ubuntu.**
### 1. Basics of shell scripting
- Shell scripting languages are interpreted language and interpreted by the respective shell. 

For example: Bash is a shell scripting language which is interpreted by the  Bash shell.

- A shell script always starts with a shebang ```#!```
 ```
#!/bin/bash

echo "Hello World!"
```
- In computing, a shebang/hashbang/pound-bang is the character sequence of a ```#``` (called hash or pound) sign and exclamation mark ```!``` at the beginning of a script. 

- The hashbang is used to specify the interpreter with which the given script will be executed. 

In the above example:  ```#!/bin/bash``` means, **the bash shell** will be used as the interpreter.

- It is not mendatory to use the hashbang and to specify the interpreter.  If we don't use the shebang, then the default shell interpreter will be used to execute the script.
- But in practice we use it, because there are several shells available for Linux and UNIX systems. While these shells have mostly common syntax, they do have different syntax or different way of handling things. So to be very specific we mention which interpreter to be used.

## 2. Starting with Bash scripting
Bash - It stands for Bourne Again Shell, it is the improved version of the ```sh``` (original Bourne shell).

### Bash as a programming langugae
[2.1 Variables](#21-variables-in-bash) 

&nbsp; &nbsp; [Variables declaration](#define-a-variable)
&nbsp; &nbsp; [Readonly variables](#read-only-variables)
&nbsp; &nbsp; [Unset a variable](#unset-a-variable)
&nbsp; &nbsp; [System variables](#22-types-of-variables-in-shell-scripting)


### 2.1 Variables in Bash
Like any other programming langugae the name of a variable should start with only alphabets (a to z or A to Z) then can contain numbers ( 0 to 9) or the underscore character ( _).

#### Define a variable
We can simply define a variable with a variable name and assigning a value to it.

Example:
```
#!/bin/bash

name="Shakh"
num=100

#print the name         #Note that: This is a command in Bash
echo "Hello ${name}"

#Or we can print as 
echo "Hello $name"

echo $num
```
Although we can define a variable in such a simple way, but for advance declarations ```declare``` command is used.

[Check why we need to use declare command](https://phoenixnap.com/kb/bash-declare#arrays)
#### Read only variables
To define a static variable to ensure that its value can't be changed in future, we can use ```readonly``` command. 
[validate the point by running this script](/scripts/readonlyExample.sh) .It will give an warning like 

```./readonlyExample.sh: line 9: name: readonly variable```

#### Unset a variable
If we want to delete or remove a variable we can use ```unset``` command. 

[Check the script and run it to understand the point](/scripts/unsetExample.sh)

Notes:
- Once you unset a variable, you cannot access the stored value in the variable.
- We can't use ```unset``` command to ```readonly``` variables. 


- A doller symbol ```$``` is used to access a variable.

### System variables
There are two types of varibales in shell scripting.
- User defined variables.
- System designed variables.

System variables are created and maintained by the operating system itself. 

- Generally these variables are defined in CAPITAL LETTERS.
- Some of the system defined variables are ```HOME, USER, UID``` etc.

**Important Note: We can assign the output of a command or a variable to another variable using a backtocks ``` (` `) ```**

Example:
```
tarikh = `date`
echo $tarikh
```