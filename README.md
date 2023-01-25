# Linux & Shell Scripting
##### [git essentials](/gitEssentials/README.md)
### [1. Linux - concepts & basic commands](#linux-concepts-and-commands)

### [2. Shell scripting - Bash scripting](/bash_scripting/README.md) 
---
## Linux concepts and commands
[History of Linux](#history-of-linux) 
&nbsp; &nbsp; [Linux Kernel](#linux-is-a-kernel)
&nbsp; &nbsp; [Benefits of Linux](#benefits-of-linux-based-os)
&nbsp; &nbsp; [CLI](#cli)
&nbsp; &nbsp; [Terminal](#terminal)
&nbsp; &nbsp; [Shell](#shell)
&nbsp; &nbsp; [win vs linux](#windos-vs-linux)

### [1. Basics of Linux](#1-basics-of-linux-1)

&nbsp; &nbsp; [1.1 Linux users](#11-users-in-linux)

&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;[1.1.1 Types of users](#111-types-of-users)

&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;[1.1.2 User management commands](#112-user-management-commands)

&nbsp; &nbsp; [1.2 Linux Directories](#12-directory-system-in-linux)

### [2. Some  basic commands](#2-some-basic-commands-1)

&nbsp; &nbsp; [listing commands](#listing-commands)
&nbsp; &nbsp; [directory commands](#directoy-commands)
&nbsp; &nbsp; [copy/move](#copymove-and-paste)

&nbsp; &nbsp; [Other useful commands](#other-useful-commands)

### [3. File Handling in Linux](#3-file-handling-in-linux-1)
&nbsp; &nbsp; [touch](#touch)
&nbsp; &nbsp; [gedit](#gedit----default-gui-text-editor) &nbsp; &nbsp; [nano](#nano-editor) 
&nbsp; &nbsp; [cat](#cat-from-concatenate) 
&nbsp; &nbsp; [vi](#vi-editor) 

&nbsp; &nbsp; [3.1 File Handling](#31-file-handling)

&nbsp; &nbsp; [3.1 Descriptors & I/O redirection](#32-file-descriptors--io-redirections)

&nbsp; &nbsp; [3.3 File Permissions](#33-file-permissions)

[4. Access control list](#4-access-control-list-acl)

## Others 
&nbsp; &nbsp; [What is a package](#what-is-a-package)
&nbsp; &nbsp; [Package manager](#package-manager)
&nbsp; &nbsp;  [apt](#apt-advanced-packaging-tool)

### [6. Some more Linux commands](#6-some-more-linux-commands-1)
***
### History of Linux
### Unix
The original idea to create a multipurpose OS 'MULTICS' was started in 1964 in Bell Telephone Labs/ Bell Labs (Nokia acquired Bell Labs in 2016)

- In 1969 Denis Ritche and Kem Thompson created a multipurpose operating system in Bell Labs  and named as 'UNICS' - Uniplexed Information & Computing Service for inside use at Bell Systems. 

- Later AT & T (American Telephone & Telegraph company) improved it more and made it public. 

- Based on that a version released in 1975 as 'UNIX v6' became popular. 

- And different companies customized it for their commercial uses and named differently.

E.g: Mac OS is derived from UNIX. 

So basically, MULTICS --> UNICS --> UNIX

### Linux

- Linux was created by Linus Torvalds first released on September 17, 1991.
- Linux design is derived from UNIX. Linux is not Unix, but it is a Unix-like OS as it is a continuation of the basis of Unix design. 

- He took inspiration from UNIX design and from the operating system 'MINIX' created by his professor 'Andrew Tanenbaum'.

- Combining his name 'Linus' and 'MINIX' by his professor he named it 'Linux'.

UNIX --> MINIX -->  LINUX + MINIX --> LINUX

### Linux is a kernel

- Linux is a kernel, a kernel is like the engine of the OS.
- Linux Kernel + GNU = An operating system.
- GNU is a collection of free and publicly avaiable software programs, applications, libraries, developer tools, games etc. 
- Combining a Linux Kernel with GNU software makes a perfect operating system. GNU adds other parts and facilities that a users need in an operationg system.

E.g: Ubuntu, Debian, Resbian, Kali, RHEL(Redhat Enterprise Linux) etc. are popular linux based operating system.

### Benefits of Linux based OS
- Open source
- Light weight and fast.
- Mulitasking and multiuser.
- Scalabiliy: Same operating system can be used on a desktop to a super computer.
- Highly reliable.
- Strong security(Affects only the current directory, if there is a virus.) 

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
### 1.1 Users in Linux

User:
- In computing a user is an entity that uses computer's progrmas, resources etc.
- Each user has a unique name and linux identifies the user with a unique user id ```UID```

User groups:
- A user group is a collection of users who are given access to certain resources or permissions on the system.
- When a user is added to a group, they inherit the group level access & permissions.
- Each user in Linux is a member of at least one group, and a user can be a member of multiple groups. 
- The main group for a user is called the user's primary group, and any additional groups that the user belongs to are called secondary groups.

- A group is identified with a group id ```GID```

### 1.1.1 Types of users
There are basically two types of users for a Linux machine -

- **System users**

   System users are entities created by the system that are responsible to run system services and processes known as non-interactive processes in the background which do not require human interaction. 

   System users are assigned **UID from 0 to 999**.

    - **Root user**

      A root user (also known as super user) is **the default system user** that has all the administrative privilages.

      **UID 0 is reserved for root user.**

- **Normal users/local users**

  A normal user/local user is a human user who wants to use the computer for day to day tasks like browsing internet, playing a game etc. A local user doesn't have all the administrative privilages.

  **Normal users are identified with UID from 1000 to 60000.**

  Practically, a normal user can switch to a root user by typing

   ```sudo su``` --> super user do , switch user

### Introduction to linux terminal:
A [Linux terminal](#terminal) starts with

 ```userName@systemName:workingDirectory$```

(```$``` for normal users, ```#``` for root user)

For example: 
- ```root@AcerNitro5:~#``` --> Root user of the computer 'AcerNitro5' is working at the default assigned directory for the user.
- Here, (```~```) indicates the **default directory** assigned to a user, doesn't matter what kind of user it is.
- ```root@AcerNitro5:/home/dir1# ``` --> Root user is working at the '/home/dir1' directory.
- ```shakh@AcerNitro5:~$ ``` --> A normal user 'shakh' is working at the default assigned directory to him.
- ```shakh@AcerNitro5:~/project1$ ``` --> Here, ```~``` denotes the default directory ```/home/shakh``` assigned to the user 'shakh'. So  ```~```+  ```/project1``` = ```/home/shakh/project1```. I.e., the user 'shakh' is working at ```/home/shakh/project1``` directory.


### 1.1.2 User management commands

### Users information:

The information of linux users is stored in a file ```/etc/passwd```. The user information contains 7 attributes

```shakh:x:1001:1001:a_comment:/home/shakh:/bin/sh```

1--> User name 'shakh'

2--> Mask password (x)

3--> UID (1001)

4--> Primary group id, GID (1001)

5--> a_commnet

6--> Home directory for the user

7--> Default shell for the user

**Adding new user: low level backend commands**

```sudo useradd  <options>   <arguments_to_the_option>   userName```

Some mostly used options:

- ```-u ``` --> Specify the UID like ```useradd -u 10023 userName``` (By default it starts from ```latest_UID +1``` and goes sequentially)

- ``` -c ``` --> Comment e.g. "Adding a new user"

- ``` -d ``` --> assign a directory as the home directory for the user. (It assumes that the specified directory already exists. If not specified then a new directory ```/home/userName``` is created, but that directory is not visible.)

- ```-m``` --> When used this flag, a new directory is created that actually works. Example ```sudo useradd -m User2```, then a new directory ```/home/User2``` is created.

- ``` -g ``` --> specify the primary group ID for the user. The group must exist before. If the group is not specified then by default a new group is created with GID same as UID and group name same as username.

- ``` -G ``` --> specify a comma-separated list of secondary groups. Groups must exist before.

- ``` -s ``` --> specify the shell user going to use


**User modification:**

```usermod <options> <arguments> userName``` 

Optons:

- All options of ```useradd``` can be used with ```usermod```

- ```-l``` --> change only the user name. Example: ```usermod -l NewName old_userName```

- ``` -L ``` --> Lock the account

- ``` -U ``` --> Unlock the account


```groups userName``` --> Show all the groups where the user is a member

``` id userName ``` --> Show all the ids related to the user.

**Deleting a user:**

```userdel <options> userName```

Options:

- ```-r ``` --> Removes the user's home directory including all files present there and  the user's mail spool also.

### Front end tool for useradd and userdel

Adding new user:

```adduser <options> userName ```

Deleting a user:

``` deluser <options> userName```

**Notes:** If there is only one user in a group and that user is deleted  using this front end tool then by default the group is also deleted.

### Group information:

On Linux, group information is held in the ```/etc/group``` file. 

Information about a particular group looks like ```groupName:x:1050:B,C,D``` where
- ```A``` is the group name
- ```x``` is the mask password
- ```1050``` is the group id.
- ```B,C,D``` are the secondary members of the group

```cat /etc/group``` --> Show information about all the groups

```getent group``` --> does same job as above command.

``` compgen -g``` --> shows only name of the groups.

```getent group group_id/Group_Name``` --> shows information about a particular group

**Create a new group:**

```
groupadd -g group_id groupName
```

**Get all the members present in a group:**

```
getent group group_id/group_name
```
Or, 

```
sudo apt-get install members      #need to install this tool

members groupName                 #shows only names of the members present in the group
```

Or, 

```
suod apt-get install libuser     #need to install this tool
sudo libuser-lid -g testgroup    #shows members along with user id
```
**Add/remove users to/from a group:**

```gpasswd <option> <argument> groupName```

Options: 
- ```-a ``` --> add a user to a group. Example, ```sudo gpasswd -a user3 Group1``` --> add user user3 to the group Group1

- ``` -M ``` --> add multiple users to a group. Example, ```sudo gpasswd -M user3,user4 Group1```

- ``` -d ``` --> remove a user from a group

**Modify a group**

```groupmod <option> <srguments> groupName```

Options:
- ```-g``` --> Group Id

- ``` -o ``` --> Override

- ``` -n ``` --> for group name related tasks.

Example: Rename a group

```sudo groupmod -n newName oldName```

**Delete a group:**

```groupdel groupName```

- A group can't be deleted if it has primary members.

### 1.2 Directory system in Linux

![File systems in Linux](/pics/linuxFileSystem.jpg)

```/``` --> It is the top directory of a Linux based OS, like C drive in Windows.

```/root``` --> Default directory for the root user of the system.

```/home``` --> default working directory for all normal users.

```/home/User1``` -->  assigned directory for the user 'User1'

Note: 

When we open a terminal, by default it starts from the home directory of the default user (user with ```UID = 1000```, i.e the use created during installation process) out of all normal users i.e, lets say there are total 5 normal users, out of them 'ulimoli' is the default user with UID =1000. So the terminal will start from ```/home/ulimoli```. And the 'Home' button on the GUI based file explorer opens the ```/home/ulimoli``` directory.

```/boot``` --> It contains the kernel of the OS and other files needed for booting the kernel like boot loader etc.

```/bin``` --> Binary: it contains binary files for essential commands whcih can be used by all users, e.g: cat, chmod etc.

```/sbin``` --> System binary, It contains the essential system commands which can be used by the root user only, e.g: fdisk, dump etc.

```/usr``` --> User System Resources. It contains the programs, libraries and applications available for all users (typically all your applications are in /usr/bin, /usr/lib, and /usr/games etc). It is similar to program files in Windows.

```/var``` --> Variables: It contains variable information such as logs and print queues.

```/dev``` --> Device: It contains information about all hardware devices.

```/etc``` --> et cetera: Contains all the configuration files.

```/opt``` --> Optional: Generally contains the 3rd party softwares.

```/media``` --> Default mount point for removable storage media such as pen drives/hard drives etc.

### 2. Some basic commands

### Listing commands
```ls option_flag arguments ```--> list the sub directories and files avaiable in the present directory

Examples:

- ``` ls -l ```--> list the files and directories in long list format with extra information
- ```ls -a ```--> list all including hidden files and directory
- ```ls *.sh``` --> list all the files having .sh extension.

- ```ls -i ``` --> list the files and directories with index numbers inodes
- ``` ls -d */``` --> list only directories.(we can also specify a pattern)

### Directoy commands
- ```pwd``` --> print work directory. Gives the present working directory.

- ```cd path_to_directory``` --> change directory to the provided path

- ```cd ~ ``` or just  ```cd ``` --> change directory to the home directory

- ``` cd - ``` --> Go to the last working directory.

- ``` cd ..``` --> chnage directory to one step back.

- ``` cd ../..``` --> Change directory to 2 levels back.

- ``` mkdir  directoryName``` --> to make a directory in a specific location

Examples:
```
mkdir newFolder                  # make a new folder 'newFolder'

mkdir .NewFolder                 # make a hidden directory (also . before a file to make it hidden)

mkdir A B C D                    #make multiple directories at the same time

mkdir /home/user/Mydirectory     # make a new folder in a specific location

mkdir -p  A/B/C/D                # make a nested directory

mkdir day{1..10}                 #makes 10 directoris as day1 day2 day3 ... day10
```

### Copy/Move and Paste

Copy paste:

``` cp <options> source desitination ``` 

Example: Copy the file **login.txt** from /home/user/Mini2/ to /home/user
```
cp /home/user/Mini2/login.txt /home/user
```
Options:
- ```-r``` --> copy the directory along with its contents.
- ```-p``` --> copy with permissions 
- ```-v ``` --> Verbose

Move: 

``` mv source destination ``` --> to move a file or contents of a file from a source to a destination

Rename:

``` mv oldname newname ``` --> to rename a file/ directory

### Other useful commands

```man mkdir``` --> Gives the manual for the commands ```mkdir```

```rm --help``` --> Helps to understand the commnad ```rm```

```history``` --> to view the commands history

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

> ### cat (from concatenate)
We can do lot of stuff using cat command.

### ```cat > file1.txt``` 
- Creates a new empty file file1.txt if file1.txt does not exist. Then it waits to write something on it. When done with writing, press 'Ctrl + D'
- If file1.txt already exists, then it overrides the existing file with whatever just written, and we lost the existing content.

- In such case we can use the following command.

### ```cat >> file1```
- Creates a new empty file and writes on it- if the file doesn't exist.
- If the file already exist then keeps the existing contents same and just appends the new contents to the file.

``` cat file1``` --> Show the contents of the file1. If file1 doesn't exist then gives an error.

```cat file1 file2 file3 > combined.txt``` --> Concatenates the contents of file1, file2, file3 line after line into a new file combined.txt
- Here also the meaning of ```>``` and ```>>``` are diffrent and convey the same effects. 

> ### vi editor
vi/vim is not installed in my system.

### 3.1 File handling

``` cat fileName``` --> open a file and show the contents on the terminal.

**Open a file in a script and readlines one by one:**
```
for line in $(cat input.txt); do
    echo $line
done
```
```head -n fileName.txt ``` --> Show first n lines of the file **fileName.txt**. (Default value of n is 10)

```tail -n fileName.txt ``` --> Show bottom n lines of the file **fileName.txt**. (Default value of n is 10)

```more fileName``` --> Opens a file on the terminal, we can move only foreward by pressing the 'Enter' button. Can't move backward. It shows more when we press 'Enter', thats why more.

```less fileName``` --> Opens a file on the terminal and fully utilizes the availabe screen. It doesnot read the complete file before opening, so it is faster to open large files. It is opposite to more. We can move in both forward and backward direction. It shows only a particular portion (lees) that the screen can view,

```wc <option> fileName.txt``` --> gives no of lines (```-l```) , no of words  (```-w```), and byte counts in the file fileName.txt

**Find files or directories:**

```find /path <options> expression``` 

It looks for files based on various criteria such as name, type, size, and modification time.

- path: is the directory where the search will begin. If no path is specified, the search will start from the current directory.

- options: are used to specify how the search should be conducted and what information should be returned.

- expression: is used to specify the criteria for the search.

Example:
```
find /home/user -name "*.txt" -mtime +30
```
This command searches the /home/user directory for all files with the .txt extension that haven't been modified in the last 30 days.


**Pipe Operator:**

We can use the ```| ``` symbol to pipe the output of one command into another command as input.

For example, to count the number of lines in a file named "input.txt", we can use the command 

```
cat input.txt | wc -l.
```
It will open the file first them it will count the number of lines.


### 3.2 File descriptors & I/O redirections

**File descriptors:**

File descriptors are integers  that act as unique identifiers for an open file or other I/O resource in a Linux system.

Integer | Process
--------|--------
0 | stdin --> standard input (read operation). The bash shell takes input from stdin. By default, keyboard is used as input. 
1| stdout --> standard output (write operation). The bash shell sends output to stdout. Output goes to display.
2|stderr --> standard error (write operation). The bash shell sends error message to stderr. Error message goes to display.

**File redirections:**

We can redirect the retunred output or error message of a linux command into a file, rather than displaying the output on the terminal.

**Override (>)**

```command > file1``` --> redirect the output of the command to a file file1. If ```file1``` already exists then content is over written. i.e. old content is removed and new content is added.

**Append (>>)**

```command >> file1 ``` --> redirect the output of the command to a file ```file1```. If file1 already exists then old content keeps the same and new content is appended.

**Redirections with descriptors:**

``` command > file1``` or ``` command 1> file1```--> Send output into file1

``` command 2> file2``` --> Send error message into file2

```command 1> file1 2> file2``` --> Send output of the command to file1 and error message (if any) to file2

**Merge:**

```command &> file1``` --> redirect by merging the standard output **&** the error message (if any) into the file ```file1```

``` command 2>&1 ``` --> redirect standrard error as the standard output.

**Input redirections:**

a) Taking inputs from a file

``` command < inputfile1 ``` 

The  ```   <  ``` or ``` 0< ``` symbol is used for input redirection. It redirects the shell to take the contents of the specified file and use it as inputs for the command.

Examples:
- ``` sort < inputfile1   ```this takes inputs from inputfile1 and sorts them.
- ``` sort < inputfile1 > sorted.txt  ``` this takes numbers from inputfile1, sort them and save the sorted numbers into a new file sorted.txt

b) Here-doc

A here document (here doc) is a type of redirection that redirects to multiple inputs (like append inputs one after another) or interactive inputs for a command.

**Here doc is useful when we want to pass multiple lines of input to a command.** 

Syntax:

```
command << DELIMETER

line1

line2

line3

DELEMETER
```
#DELEMETER is a string that marks the START and END of inputs.

**Example:**

Lets say we want to sort ```E, d, eg,re,ew,L``` into alphabetical order and these alphabets are not stored in file (as in the previous case). We want to give these alphabets as inputs on the way when we want to sort them.

So we can type on the terminal ``` sort << EOF ```. This will give us an interactive input window. We can add multiple inputs and when the here-doc will be ended using the delimeter ```EOF```, it will immediately sort out the input strings into alphabetical order.

```
User@AcerNitro5:~$ sort << EOF
> E
> d
> eg
> re
> Ew
> L
> EOF
d
E
eg
Ew
L
re
```
So basically ```<``` redirects to inputs from a input file for a particular and  a here-doc ```<<``` redirects to multiple present time given inputs for a particular command.

### 3.3 File permissions

![File permissions in linux](/pics/1673452553028.jpeg)

- In Linux platforms permissions are secured by the default mechanism called Umask.

- Only the file owner or the root user can change the permissions.

File Type:
- ```-``` --> means it is a single file

- ``` d ``` --> directory

- ```l``` --> links

Access modes:
- **r or 4** --> Only  read the file and list the files in a directory

- **w or 2** --> Write or modify or append the file and create/remove files and directories in/from a directory.

- **x or 1** --> Execute the file and enter into a directory.

Example: **645**
- 6(4+2+0, means only read and write) for user permisiions.

- 4(4+0+0, means only read permission) for group permissions.

- 5(4+0+1, means only read and executable) for other user permissions.

### Modify the permissions

```chmod <permissions> <file/directory>``` --> chmod: change mode

```+``` for owner(particular user)

```-``` for group

```=``` for others

Changing mode in absolute form (numbers form) is a good option.

Example,

```chmod 754 file.txt```


Notes:
- chmod --> Change mode, 

- chown --> Change owner

- chgrp --> Change group

### 3.4 Control file permissions
We can also control permissions of a file or directory for owner, groups &  others using ```facl ```(file access control list) commands.


ACL stands for "Access Control List". It's a way of giving specific users or groups certain permissions to access certain files or directories on a Linux system. For example, you can use ACLs to give a certain user permission to read and write to a specific file, while denying that same permission to other users. This way you can have more fine-grained control over who can access and make changes to files on your system.

```setfacl -m u:userName:permission   file/Directory``` --> Assign permission for a user

```setfacl -m g:groupName:permission   file/Directory``` --> Assign permission for a group

```getfacl file/Directory``` --> To list the applied ACLs on a file or directory

chown usesrName file/Directory




### oo. Package manager
### What is a package?
In the context of Linux, a package is a collection of files that are bundled together and distributed over the internet. These packages contain the code, libraries, and any other resources that are needed to run a piece of software on the system. 

Packages are typically created by the developers of the software and are made available for download from online repositories or package repositories.

**In simple word any software is a package.**

There are different package formats and we need a package manager to install, remove, update packages.

Example:

- **DEB** (```.deb``` extension) is the default package format on many popular Linux distributions, including Ubuntu and Debian. DEB packages are typically installed using the apt package manager.

- RPM: This is the default package format on many Red Hat-based Linux distributions, such as Fedora and CentOS. RPM packages are typically installed using the yum or dnf package managers.

Packages are normally in a pre-compiled binary format; thus installation is quick and requires no compiling of software.
### Package manager
A package manager is a software application that helps the user to install, remove, upgrade, configure and manage software packages on an operating system.

The package manager can be a GUI application like **synaptic package manager** or  a CLI tool like apt-get.

There are many different package managers available for Linux systems, each with its own set of features and capabilities. Some common package managers for Linux include:

- **apt**(Advanced Packaging Tool): default package manager on Ubuntu and Debian. It is a CLI package manager with  capabilities of installing, updating, and removing software packages from online repositories.

- **yum**: This is the default package manager on many Red Hat-based Linux distributions, such as Fedora and CentOS. 

- **dnf:** This is the successor to yum and is the default package manager on some newer Red Hat-based Linux distributions, such as Fedora 22 and later. 

### Package managers on Ubuntu

### apt: Advanced packaging tool

Install a Package:

```sudo apt install nmap``` --> Installs nmap network scanner package

Remove a Package: 

```sudo apt remove nmap``` --> Remove the package nmap

Update the Package Index:

The APT package index is essentially a database of available packages from the repositories defined in the /etc/apt/sources.list file and in the /etc/apt/sources.list.d directory. 

sudo apt update







### 6. Some more Linux commands

``` hostname``` --> Get name of the host machine.

``` hostname -i ``` --> ip address of the host machine

``` ifconfig``` -->  ifconfig command is used to configure the kernel-resident network interfaces.

- If no arguments are given, ifconfig command displays the status of the currently active interfaces.




