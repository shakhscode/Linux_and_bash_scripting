# Linux & Shell Scripting
##### [git essentials](/gitEssentials/README.md)
### [1. Linux - concepts & basic commands](#linux-concepts-and-commands)

### [2. Shell scripting - Bash scripting](/bash_scripting/README.md) 
---
## Linux concepts and commands
[History of Linux](#history-of-linux) 
&nbsp; &nbsp; [Linux Kernel](#linux-is-a-kernel)
&nbsp; &nbsp; [CLI](#cli)
&nbsp; &nbsp; [Terminal](#terminal)
&nbsp; &nbsp; [Shell](#shell)
&nbsp; &nbsp; [win vs linux](#windos-vs-linux)

### [1. Basics of Linux](#1-basics-of-linux-1)

### [2. Some  basic commands](#2-some-basic-commands-1)

### [3. File Handling in Linux](#3-file-handling-in-linux-1)
&nbsp; &nbsp; [touch](#touch)
&nbsp; &nbsp; [gedit](#gedit----default-gui-text-editor) &nbsp; &nbsp; [nano](#nano-editor) &nbsp; &nbsp; [vi](#vi-editor) &nbsp; &nbsp; [cat](#cat-from-concatenate) 

### [6. Some more Linux commands](#6-some-more-linux-commands-1)
***
### History of Linux
### Unix
The original idea to create a multipurpose OS was started in 1964 in Bell Telephone Labs/ Bell Labs (Nokia acquired Bell Labs in 2016)
- In 1969 Denis Ritche and Kem Thompson created a multipurpose operating system in Bell Labs  and named as 'Unics' - Uniplexed Information & Computing Service for inside use at Bell Systems. 

- Later AT & T (American Telephone & Telegraph company) improved it more and made it public. 

- Based on that a version released in 1975 as 'UNIX v6' became popular. And different companies customized it for their commercial uses and named differently.

E.g: Mac OS is derived from UNIX. 

### Linux

- Linux was created by Linus Torvalds first released on September 17, 1991.
- Linux design is derived from UNIX. Linux is not Unix, but it is a Unix-like OS as it is a continuation of the basis of Unix design. 

- He took inspiration from UNIX design and from the operating system 'MINIX' created by his professor 'Andrew Tanenbaum'.

- Combining his name 'Linus' and 'MINIX' by his professor he named it 'Linux'.

### Linux is a kernel

- Linux is a kernel, a kernel is like the engine of the OS.
- Linux Kernel + GNU = An operating system.
- GNU is a collection of free and publicly avaiable software programs, applications, libraries, developer tools, games etc. 
- Combining a Linux Kernel with GNU software makes a perfect operating system. GNU adds other parts and facilities that a users need in an operationg system.
E.g: Kali, Ubuntu etc. are popular linux based operating system.
 
### Differences between CLI, Terminal, Shell
### CLI 
- There are two ways to use an opearating system or any software. One is CLI(Command line interface) and the other one is GUI (Graphical user interface). 
- To do something in a computer, we can either use the mouse to click GUI icons and options  or we can write - what the computer should do. The interface where we can write our commands in text form to interact with a software or the computer is called a command line interface or CLI. 
- The term 'CLI' is more like a generalized  english term. 

### Terminal 
- It is a text input and output window. We write our commands on it to do something in the computer and it can show the output returned by a particular software or computer itself in text form.

- So basically, **Terminal** in Linux is a CLI tool for the computer itself or any other software.

-  Command Promt (cmd) in windows is equivalent to Terminal in linux.

### Shell 
- Shell is a software program or that acts like a layer/layer on the top of the kernel (the engine of the OS). It interprets the users commands, communicates with the kernel and helps to execute the user commands.

User -->  Shell --> Kernel --> Hardware

- A shell may have it's own user interface or a CLI. For example in windows Powershell has its own CLI.

- For linux **Terminal** is the CLI for the shell. So we can write our commands on the terminal or  we can also write a _.sh executable file to deploy the shell for a task.

### Conclusion 
- **In linux Terminal is the CLI for the shell.  But to interact with the shell Terminal is not the only way. Writing an executable _.sh file is the another way.**

### Windos vs. Linux

Windows | Linux
--------|------
Folder | Directory
Administrator | Root user
Software | Package
Root directory--> C:\ | top root directory--> Computer  /

- There are always two kinds of users in Linux. One is 'root user' who is the administrator of the whole system. And the other one is normal user.
- There can be multiple normal users.

### 1. Basics of Linux


### File Hierarchy in Linux
![](Directories.jpg)


### 2. Some basic commands
- ```pwd``` --> print work directory. To get the present working directory.

- ```ls ```--> list the sub directories avaiable in the present directory
-``` ls -l ```--> list the files and directories in long list format with extra information
- ```ls -a ```--> list all including hidden files and directory


- ```cd path/directory``` --> change directory to the provided path

- ```cd ~ ``` or just  ```cd ``` --> change directory to the home directory
- ``` cd -``` or ``` cd ..``` --> chnage directory to one step back
- ``` mkdir  path/directoryName``` --> to make a directory in a specific location
```
mkdir newFolder

#Or in a specific location
mkdir /home/user/Mydirectory

# To create a hidden directory or file
mkdir .NewFolder
```
- ``` cp source desitination ``` --> copy a file or contents of a file from a source to a destination

Example: Copy the file **login.txt** from /home/user/Mini2/ to /home/user
```
cp /home/user/Mini2/login.txt /home/user
```
- ``` mv source destination ``` --> to move a file or contents of a file from a source to a destination
- ``` mv oldname newname ``` --> to rename a file/ directory

### 3. File Handling in Linux


> ### touch 

#### Use case 1:
Basically we can create new  file(s) using touch command
```
touch file1.txt, file2.txt, file3.txt
```
- Above command will create new files file1.txt, file2.txt, file3.txt

#### Use case 2:
Mainly touch command is used to update the access date-time and/or modification date-time of a computer file or directory.


```
touch login.txt
```
- If the file login.txt already exists then it does nothing. Means it does not change or add or remove the contents of the file. Contents of the file stay same as it was. 
- In such case it just updates last access time and modified time.

We can check the file statistics using the command
```
stat login.txt
```
To update the access time of the file **example.txt**
```
touch -a example.txt
```

To update the modified time of the file **example.txt**

```
touch -m example.txt
```
To update both access time and modified time 
```
touch example.txt
```
#### Usecase 3:
We can perform the use_case1 and use_case2 in other directories also
```
touch  /home/user/Mini2/test.txt
```


> ### gedit --> default GUI text editor

gedit is the default GUI text editor for the GNOME desktop environment on Linux systems like ubuntu. Also avaiable on Mac and can be installed on Windows.

We can open the gedit editor using GUI options 

Go to **Show Application >> Text Editor**

Or, we can open the gedit editor using the command
```
gedit
```
If we type

```
gedit /home/user/Applications/example.txt
```
- This opens the file **example.txt** (if present in the specified directory) on the editor.
- If the file doesn't exist it creates a new file as **example.txt** and opens it on the  editor.
- We need to save a file on the gedit editor using the GUI option 'Save'.


> ### nano editor
It is a CLI editor. It doesn't have GUI options.

- If we type ```nano test.txt``` --> it will create a new file and will open it on the nano editor.

- If the file **test.txt** already exists then it will open the file on the editor to edit the file.

> ### vi editor
vi/vim is not installed in my system.

> ### cat (from concatenate)

### File permissions
chmod +x,w,h> --> Grant permission
chmod - --> Remove permission. 


### 6. Some more Linux commands

``` hostname``` --> Get name of the host machine.

``` hostname -i ``` --> ip address of the host machine

``` ifconfig``` -->  ifconfig command is used to configure the kernel-resident network interfaces.

- If no arguments are given, ifconfig command displays the status of the currently active interfaces.




