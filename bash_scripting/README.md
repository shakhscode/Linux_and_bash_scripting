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
