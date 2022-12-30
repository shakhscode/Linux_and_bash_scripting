## Bash Scripting
### Contents
[What is a shell ?](#what-is-a-shell)
&nbsp; &nbsp;[Basics of shell scripting](#basics-of-shell-scripting)
&nbsp; &nbsp; [Bash Shell](#bash-shell)

Bash as a scripting langugae

[1. Variables](#1-variables-in-bash) 

&nbsp; &nbsp; [Variables declaration](#define-a-variable)
&nbsp; &nbsp; [Readonly variables](#read-only-variables)
&nbsp; &nbsp; [Unset a variable](#unset-a-variable)
&nbsp; &nbsp; [System variables](#system-variables)

[2. Bash data structure](#2-bash-data-structure) 

&nbsp; &nbsp; [Numerically indexed array](#create-a-numerically-indexed-array)
&nbsp; &nbsp; [Associative array](#create-an-associative-array)
&nbsp; &nbsp; [Array operations](#array-operations)

[3. Taking user inputs](#3-taking-input-from-the-user)

&nbsp; &nbsp; [Single input](#taking-single-input)
&nbsp; &nbsp; [Multiple inputs](#taking-multiple-inputs)

[4. Conditional statements](#4-conditional-statements)

&nbsp; &nbsp; [4.1 If-else](#41-if-else)

&nbsp; &nbsp; [4.2 Case Statements](#42-case-statements)

&nbsp; &nbsp; [Some commonly used Bash operators](#common-operators-used-in-conditional-statements)

[5. Printing outputs](#5-printing-outputs)

[6. Loops in Bash](#6-loops-in-bash)

&nbsp; &nbsp; [While loop](#61-while-loop)
&nbsp; &nbsp; [For loop](#62-for-loop)
&nbsp; &nbsp; [Until loop](#63-until-loop)
&nbsp; &nbsp; [Select loop](#64-select-loop)
&nbsp; &nbsp; [break & continue](#65-break--continue)

[7. Functions in Bash](#7-functions-in-bash)

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

## Basics of shell scripting
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

### Bash Shell
Bash - It stands for Bourne Again Shell, it is the improved version of the ```sh``` (original Bourne shell).

## Bash as a scripting language
### 1. Variables in Bash
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

Ways to define a readonly variable

```
readonly varName

#Or,

declare -r varName=value
```
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

**Important Notes:**

We can assign the output of a command or a variable to another variable using a backtocks ``` (` `) ```

Example:
```
tarikh = `date`
echo $tarikh
```
**Bash variables and commands are case sensitive.**

### 2. Bash data structure
Bash array is a 1-dimensional structure to store data. A Bash array can store data of both numerical and string types. (So we can consider a Bash array as a python list)
- Bash does not support multidimensional arrays, and we can’t have array elements that are also arrays.
- There is no limit on the maximum number of elements that can be stored in an array.

There are  mainly 2 types of arrays -

- 1 D numerically indexed array which are referenced using integers starting from 0. (-1 refer to the last element)
- Associative arrays which stores data in kay-value pair and is indexed by keys.

### Create a numerically indexed array

It is not necessary to declare a numerically indexed array, we can define it on the way.
 
```
arrayName=(el1 el2 elN)     
#Note that no comma (,) is not required between the elements
```
Or, we can declare explicitly as 
```
declare -a arrayName
arrayName[index_1]=value_1
arrayName[index_2]=value_2
arrayName[index_n]=value_n
```
### Create an associative array
Unlike numerically indexed, the associative arrays must be declared before they can be used. So we can declare as

```
declare -A arrayName
arrayName[key1]=value1
arrayName[key2]=value2
```
Or,  in a simple way 
```
declare -A arrayName=([key1]=value1 [key2]=value2)
```
### [Array operations](/scripts/arrayOps.sh)

Extract a particular element: ```${}```

```
var=${arrayName[index/key]}
```
Access all elements: ```${[@]}```
```
var2=${myArray[@]}

#Or, 

var2=${myArray[*]}
```
Extract a range of elements
```
a=( 12 13 14 15 18 19 )

#Extract elements of a from 0 index to index 3
echo ${a[@]:0:3}
```
#note that ${a[0:3]} is a wrong syntax in bash.

Get the length of an array: ```${#}```
```
echo "Length of arr1: ${#arr[*]}"
```
Get the indices/keys of an array: ```${!}```
```
#get index (for numerically indexed array)
echo "Indices of arr1 ${!arr1[@]}"

#get keys (for associative arrays)
echo "Keys of arr2: ${!arr2[@]}"
```

Add a new element (same syntax can be used to update values)
```
arrayName[index/key]=value
```

Delete an element: ```unset```
```
unset arrayName[key/index]
```


### 3. Taking input from the user

### Taking Single input
```
#!/bin/bash

read -p "What is your name: " name

#take the input using read command and store it into the variable 'name'

# use -sp flag to take the input silently (e.g. passwords)

#Now print the name as output
echo "Hello $name, welcome!"
```


### Taking multiple inputs
```
read -p "Enter names: " name1 name2 name3

echo "I am with $name1, $name2 and $name3"
```
Give inputs without comma and get the output as follow
```
Enter names: Alice Bob Charles
I am with Alice, Bob and Charles
```
Best way to take multiple inputs is-using an array
```
echo -e "Enter the numbers: \c"
# -e is used to enable \c which is used to keep the cursor in the same line

read -a numbers

echo "The numbers are: ${numbers[@]}"
```

**Note:**

Even if we don't use a variable to take user input, by default input is stored in the system varible REPLY

```
read -p "Enter a number: "
echo "The number is: $REPLY"
```

### 4. Conditional statements
### 4.1 If-else
In Bash we can use if else conditional statements in 4 ways. 

1. if-then-fi  ([Check the example](/scripts/if_then.sh))

```
if [ condition ]
   then  
   statement1
   statemet2
fi  #end if
```
2. if-then-else-fi ([check the example](/scripts/if_else.sh))
```
if [ condition ]
   then
   statement1
   statemet2
else 
   statement3
   statemet4
fi
```
3. if -then-elif-then-else-fi ([Check the example](/scripts/if_elif_else.sh))

```
if [ condition_1 ]
   then
   statement1
   
elif [ condition_1 ]
   then
   statemet2
else
   statement3
fi
```

4. Nested if else 
([Check an example here](/scripts/nested_if_else.sh))

### [4.2 Case statements](/scripts/caseEx.sh)
Case statements are helpful when we need to use multiple if else statements.

General Syntax:
```
case EXPRESSION in

  PATTERN_1)
    STATEMENTS
    ;;    #double semicolons are important

  PATTERN_2)
    STATEMENTS
    ;;

  PATTERN_N)
    STATEMENTS
    ;;

  *)    #the default case
    STATEMENTS
    ;;
esac
```
- We can use multiple patterns separated by the | operator. The ) operator terminates a pattern list.
- It is a common practice to use the wildcard asterisk symbol (*) as a final pattern to define the default case. This pattern will always match.

[Explore the exmaple to know how it works.](/scripts/caseEx.sh)

- If no pattern is matched, the return status is zero. **Otherwise, the return status is the exit status of the executed commands.**

### Exit Status
Each shell command returns an exit code when it terminates, either successfully or unsuccessfully.

By convention, an exit code of zero indicates that the command completed successfully, and non-zero means that the given condition is not true or an error was encountered.

**Note**:

The Bash case statement has a similar concept with the Javascript or C switch statement. The main difference is that unlike the C switch statement, the Bash case statement doesn’t continue to search for a pattern match once it has found one and executed statements associated with that pattern.

### Common operators used in conditional statements
```-n VAR``` ---> True if the length of VAR is greater than zero.

```-z VAR``` --> True if the VAR is empty.

```string1 = string2``` -->  True if STRING1 and STRING2 are equal.

```STRING1 != STRING2``` --> True if STRING1 and STRING2 are not equal.

```-eq``` --> equal 

``` -gt ``` --> greater than 

```-lt``` --> less than 

```-ge``` --> greater than equal 

```-le ``` --> less than equal

``` ! ``` --> not equal

``` && ``` --> logical AND

``` [ condition1 -a condition2 ] ``` --> Also logical AND

``` || ``` --> logical OR

``` [ condition1 -o condition2 ] ``` --> Also logical OR


```-h FILE``` --> True if the FILE exists and is a symbolic link.

```-r FILE ```--> True if the FILE exists and is readable.

```-w FILE``` --> True if the FILE exists and is writable.

```-x FILE``` --> True if the FILE exists and is executable.

```-d dir``` --> True if the directory 'dir' exists.

```-e FILE ``` --> True if the FILE exists.

```-f FILE``` --> True if the FILE exists and is a regular file (not a directory or device).

#### Some other operators
```+``` --> Addition

```/``` --> Division

```%``` --> modulas operator

Example: Find the remainder 
```
num1=10
num2=3
echo "Remainder: $(expr $num1 % $num2 )"
```

**Note:**
Keep in mind that in different situations ```[ condition ]``` or ```[[ condition ]]``` or ``` (( condition ))``` syntax is used to specify the conditions.

### 5. Printing outputs
Most commonly used output command is ```echo```. 

- ```echo``` by default considers every output as strings.
- So, ```$``` or ```${}``` is used as space holder for variables.

Example 1: print only plain text

```
echo Hello world!
```
Or,
```
echo "Hello world!"
```

Example 2: print variable with strings
```
num1=10
echo  "Hello I have $num1 apples."
```
Or,
```
num1=10
echo  "Hello I have ${num1} apples."
```
Example 3: print multiple variables
```
num1=10
num2=20
num3=30
echo " $num1 + $num2 + $num3 = $(( num1+num2+num3 )) "
```
#here ```$(( num1+num2+num3 ))``` is a way to perform arithmatic operations.

Example 4: printing all elements of an array
```
arr=( 1 2 3 4 )
echo ${arr[@]}
```

Example 5: directly print the result of an arithmatic operation
```
num1=10.3
num2=3
echo "scale=4; $num1/$num2" | bc
```
#scale=4 means round off to 4 decimal places. bc is the calculator.
### 6. Loops in Bash
### [6.1 While loop](/scripts/while_loop.sh)

The logic and rules for while loop is similar to other programming languages.

Syntax:
```
while [ condition ]
do 
  statement1
  statement2
  statement3
done
```
### 6.2 For loop

For loop in Bash convey the similar logic as 'for loop' does in any other programming language.

But it has different implementation syntax for different purposes.

[Syntax 1: Similar to python](/scripts/basic_for_loop.sh)
```
for i in {start..end..increment/decrement}
do 
  command1
  command2
done
```

[Syntax 2: Similar to C language](/scripts/basic_for_loop.sh)
```
for (( initialization; condition; increment/decrement ))
do 
  command1
  command2
done
```
[Syntax 3: Iterate through objects](/scripts/iterate_through_files.sh)
```
for f in file1 file2 file3
do 
 command1 on f
 command2 on f
done
```
[Syntax 4: Iteratively execute commands](/scripts/forloop_for_commands.sh)
```
for Command_OUTPUT in command1 command2 command3
do 
  statement1 on $command_OUTPUT
  statement2 on $command_OUTPUT
done
```

### [6.3 Until loop](/scripts/untilloop.sh)

**The until loop works until  the ```[ condition ]``` is flase.**

Syntax:
```
until [ condition ]
do 
  statement1
  statement2
done
```

### [6.4 Select loop](/scripts/selectLoop.sh)

It iterates through a list, and gives an indexed list, then gives a desired output based on our selection.

**Select is best to use with case satements.**

```
#!/bin/bash

select name in Ami Tumi Hedo Rido
do
   echo $name
done
```
This gives output as
```
1) Ami
2) Tumi
3) Hedo
4) Rido
#? 4
Rido
#? 3
Hedo
#? 1
Ami
#? 3
Hedo
```

### 6.5 Break & Continue

[Break - breaks the entire loop (current running loop)](/scripts/primeNums.sh)

```
if [ condition ] then;
  
  continue 
  
  #Or,
  
  break

fi
``` 

Continue - terminates the present iteration of the loop and goes to the next iteration.

### [7. Functions in Bash](/scripts/fun1.sh)

### [Define a function](/scripts/fun1.sh)
```
function funName() {

   echo $1
   echo $2
   echo $3
   ...
   return value
   #setting return value is not necessary
}

```
#Note that $1, $2, $3 takes the first , second, third arguments respectively.

### [Call a function](/scripts/fun1.sh)
```
#without arguments
funName

#with arguments
funName arg1 arg2 arg3 
```

### Set the return value (if returned) to a variable
```
funcName arg1 arg2
variable=$?

#Or,

variable=$(funName arg1 arg2)
```
**Notes:**
- In Bash a variable declared inside the function by default acts as a global variable, i.e once the function is called, the variables of the function can be used outside the function also as normal script level variables. To avoid that we can use ```local``` status during declaring a variable inside the function.

[Check the example](/scripts/globalfun_Var.sh)

- Bash does not have a built-in mechanism for returning arrays from functions.
- Like ```readonly``` variables we can also define readonly functions, i.e. a readonly function can't be modified and a new function with the same name (same name as readonly function) can't be defined within the same script.
- we can check if there is any read only function/variable by 

```readonly```  -->to check read only variables

```readonly -f  ``` -->to check readonly functions
