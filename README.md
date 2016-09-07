

# **SHELL SCRIPTING** #
------------------------------
## **Table of Contents**

[TOC]


##**Shell Scripting Tutorial-1:** _Introduction_ ##

Install a linux distribution.

## **Shell Scripting Tutorial-2:** _Shell, Kernel, Terminal and More_ ##

**Shell** is an interface between user and the UNIX Kernel.  
**UNIX Kernel** manages the resources and hardware.  
**Terminal** provides access to shell.  
  
\<username>@\<machinename>:~$ terminal commands must be lowercase.  
  
**Example:**
```
#!/usr/bin/env bash
who am i
whoami
pwd
```
**Output:**
```
joker    pts/3        2016-08-31 16:40 (:0.0) joker /home/joker/PycharmProjects/bash_script
```
| Command  | Description |
|---|---|
| `who am i` | shows user name, terminal number, date |
| `whoami` | shows only user name |
| `pwd` | prints the working directory |

##**Shell Scripting Tutorial-3:** _View System Date, Calender_ ##

### Calender ###
calender commands:  
  
| Command  | Description |
|---|---|
| `cal`  | prints the calender |
| `cal 7 2006` | prints july 2006 |
| `cal feb 2033` | prints february 2033|
  
### Date ###
**date** command prints date as _**Mon Aug  8 14:37:04 EEST 2016**_.  
  
Output of date command can be customized.  
$ date '+DATE: %m-%y%nTIME: %H:%M:%S'  
**Example:**
```
#!/usr/bin/env bash

cal # prints the calender
cal 7 2006 # prints july 2006
cal feb 2033

date # prints date, time and year
date '+DATE: %m-%y%nTIME: %H:%M:%S' # customized date print
```
  
**Output:**
```
    August 2016       
Su Mo Tu We Th Fr Sa  
    1  2  3  4  5  6  
 7  8  9 10 11 12 13  
14 15 16 17 18 19 20  
21 22 23 24 25 26 27  
28 29 30 31           
                      
     July 2006        
Su Mo Tu We Th Fr Sa  
                   1  
 2  3  4  5  6  7  8  
 9 10 11 12 13 14 15  
16 17 18 19 20 21 22  
23 24 25 26 27 28 29  
30 31                 
   February 2033      
Su Mo Tu We Th Fr Sa  
       1  2  3  4  5  
 6  7  8  9 10 11 12  
13 14 15 16 17 18 19  
20 21 22 23 24 25 26  
27 28                 
                      
Wed Aug 31 16:43:35 EEST 2016
DATE: 08-16
TIME: 16:43:35
```
| Command  | Description |
|---|---|
| `date`  | prints date as "Mon Aug  8 14:37:04 EEST 2016" |
| `date '+DATE: %m-%y%nTIME: %H:%M:%S'` | prints date as "DATE: 08-16 TIME: 14:40:33"|

##**Shell Scripting Tutorial-4:** _Create Files & Directories_ ##

**touch** is used to create empty files.  
**mkdir** is used to create empty folder.  
**cd** is used to navigate inside folders.  
**Example:**
```
#!/usr/bin/env bash

touch empty_file1 empty_file2 empty_file3 # creates empty file

mkdir folder1 folder2 folder3 # creates folder
mkdir Documents/folder1 # creates folder in a specific path

cd Documents/folder1
```
**Output:**
```

```

| Command | Description |
|---|---|
| `touch empty_file1 empty_file2` | creates two empty files|
| `mkdir folder1` | creates a folder in working directory |
| `mkdir Documents/folder1` | creates a folder in Documents directory |

##**Shell Scripting Tutorial-5:** _Text Files: Create, Merge & Play_ ##

**cat** creates file with text.  
`$ cat > test_file`  
`test_file content bla bla..  `  
  
**cat** shows content of the file.  
`$ cat test_file`  
`$ cat < test_file`  

**Example:**
```
#!/usr/bin/env bash

cat > test_file # creates file with text
# test_file content is entered here...

cat < test_file # prints the content
cat test_file # prints the content

cat > test_file2 # creates file with text
# test_file2 content is entered here..

cat test_file test_file2 > merged_test_files # merge two files

cat < merged_test_files # shows both test files' content
```
**Output:**
```
test_file_content 1 EOF
test_file_content 1 EOF
test_file_content 1 EOF
test_file2_content 2 EOF
test_file_content 1 EOF
test_file2_content 2 EOF
```
| Command | Description |
|---|---|
| `cat > test_file` | creates file with text | 
| `cat < test_file` | prints the content |
| `cat test_file` | prints the content |
| `cat > test_file2` | creates file with text |
| `cat test_file test_file2 > merged_test_files` | merge two files |
| `cat < merged_test_files` | shows both test files' content |

##**Shell Scripting Tutorial-6:** _Rename & Delete Files & Directories_ ##


### Rename Files & Directories ###
**mv** renames files and directories  
`mv file1 file2`  

### Delete Files & Directories ###
**rm** deletes file  
`rm file`  

**rm -r** deletes directory  
`rm -r directory/`  

**rmdir** deletes empty directory  
`rmdir empty_directory`  
**Example:**
```
#!/usr/bin/env bash

touch farm_village
mv farm_village red_cliff # renames the file
rm red_cliff # deletes the file

mkdir new
rm -r new # deletes the directory

mkdir test
rmdir test # deletes the directory

```
**Output:**
```

```
| Command | Description |
|---|---|
| `mv file1 file2` | renames the file |
| `mv directory1 directory2` | renames the directory |
| `rm file2` | deletes the file |
| `rm -r directory2` | deletes the directory |
| `rmdir empty_directory` | deletes the empty directory |

##**Shell Scripting Tutorial-7:** _Create Copies, Links to Files & Directories_ ##

### Copy Files ###
**cp** is used to copy files from one location to other.  
**cp** copies the file **mv** cuts and pastes the file.  
`cp file /home/Music/file_new_name`  

### Links ###
**ln** creates hard link for a file.   
**Hard link** is replica of original one.  
Any changes from old file, also exists in new one.  
Removing the original one does not effect new one.  
`ln old_file new_file`  

**ln -s** creates soft link.  
Any changes from old file, also exists in new one.  
Removing the original makes soft link useless.  
`ln -s old old_soft`  
**Example:**
```
#!/usr/bin/env bash

touch old
cp old /home/Music/new_file # copy files with new name

ln old new # creates hard links
# any changes from old file, also exists in new one (HARD link)

ln -s  old old_soft # creates soft  link

```
**Output:**
```

```
| Command | Description |
|---|---|
| `cp old_file /home/Music/new_file` | copy files to new location with new name |
| `ln file hard_file` | creates a hard link |
| `ln -s file soft_file` | creates a soft link |

##**Shell Scripting Tutorial-8:** _File Permissions_ ##

### File Permission ###
**owner**, **group** and **other** are 3 permission part.  

**read**, **write** and **execute** are 3 type of permission.  
- **read**: has numeric value "**4**".  
- **write**: has numeric value "**2**".  
- **execute**: has numeric value "**1**".  

### "umask" Usage ###

**umask** is used to specify permission values.  
Assume **umask** value is **_0022_**.  
`file permission = 666 - 022 = 644` which means owner(read, write=6), group(read=4), other(read=4)  
`directory permission = 777 - 022 = 755` which means owner(read, write, execute=7), group/other(read, execute=5)  
**Example:**
```
#!/usr/bin/env bash

umask # shows the number that is used to create defaul file permission.
# output: 0022
# which means:
# - file permissions will be     = 666-022 = 644 (owner->read,write group/other->read)
# - directory permission will be = 777-022 = 755 (owner->r,w,e group/other->r,e)

```
**Output:**
```
0022
```
| Command | Description |
|---|---|
| `umask` | shows file and directory permission creation base number |

##**Shell Scripting Tutorial-9:** _See What's Using in 'ls'_ ##

### Usage of 'ls' ###

**ls** shows the list of files and directories.  
`ls -l` shows the following  
`total 4`  
`-rw-r--r-- 2 joker joker    0 Aug  9 13:58 forrest_village`  
`-rw-r--r-- 2 joker joker    0 Aug  9 13:58 new`  
`-rw-r--r-- 1 joker joker    0 Aug  9 15:10 sample`  
`drwxr-xr-x 2 joker joker 4096 Aug  9 14:05 sdf`    

**"d"** letter at the beginnig of the last line shows that it is a **directory**.  
Any **"l"** letter at the beginning of the line shows that it is a **soft link**.  

Next characters shows the permissions owner(read,write,execute)group(read,write,execute)other(read,write,execute)  

### Hidden files and 'ls -a' ###

Hidden files are created using . at the beginning of the file name.  
`touch .test`  

`ls -a` shows all files in the directory, inclued hidden files.  
**Example:**
```
#!/usr/bin/env bash

cat > test
# random text in test file...

ls # lists the files and directories

ls -l # lists the file permissions.

touch .test # creates a hidden files
ls -a # lists all files and directories including hidden ones.

```
**Output:**
```
list of all files will be printed.
```
| Command | Description |
|---|---|
| `ls` | lists files and directories |
| `ls -l` | lists files and directories with permissions |
| `touch .test` | creates a hidden file |
| `ls -a` | list all files and directories including hidden ones |

##**Shell Scripting Tutorial-10:** _Change File Permissions Using 'chmod'_ ##

### Usage of 'chmod' ###

`**chmod**` changes file permissions.  
`chmod 777 test` gives read, write and execute permissions to owner,group and other  

### Usage of 'uname' ###
`**uname**` shows all about machine.  
`$ uname -a` 
output:  
`**Linux joker 3.16.0-38-generic #52~14.04.1-Ubuntu SMP Fri May 8 09:43:57 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux**`  

**Example:**
```
#!/usr/bin/env bash

touch test
ls -l

chmod 777 test # gives all permissions to owner, group and others.
ls -l

uname -a # shows all about machine
# output:
# Linux joker 3.16.0-38-generic #52~14.04.1-Ubuntu SMP Fri May 8 09:43:57 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux
```
**Output:**
```
####file list will be printed here.
Linux joker 3.16.0-38-generic #52~14.04.1-Ubuntu SMP Fri May 8 09:43:57 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux

```
| Command | Description |
|---|---|
|`chmod 777 test` | gives all permissions to all users |
|`uname -a` | shows all details about machine and kernel |

##**Shell Scripting Tutorial-11:** _Count Lines, Words & Characters Using 'wc'_ ##

### Usage of 'file' ###

**`file`** shows the type of files.  
`file *`  
output:  
`aaa:             symbolic link to 'new' `  
`bbb:             empty `  
`forrest_village: empty `  
`jazz:            ASCII text`    
`new:             empty `  
`sdf:             directory`  

### Usage of 'wc' ###

`wc file`  
output:  
`4  7 48 file`  
4 : number of lines  
7 : number of words  
48: number of characters  

`wc -l file` show line count  
`wc -w file` show word count  
`wc -c file` show character count  
**Example:**
```
#!/usr/bin/env bash

file * # shows the type of files
file test # shows the type of file test

wc test # shows the number of lines,words and chracters of file test
wc -l test # shows the number of lines of file test
wc -w test # shows the number of words of file test
wc -c test # shows the number of characters of file test
```
**Output:**
```
commandlist_tutorial_50:     ASCII text
create_consecutive_files.sh: Bourne-Again shell script, ASCII text executable
empty_file1:                 empty 
empty_file2:                 empty 
empty_file3:                 empty 
folder1:                     directory 
test: ASCII text
 1  2 10 test
1 test
2 test
10 test

```
| Command | Description |
|---|---|
| `file *` | shows file types of all files |
| `wc file` | shows number of lines, words and chracters of file |
| `wc -l file` | shows number of lines |
| `wc -w file` | shows number of words |
| `wc -c file` | shows number of chracters |

##**Shell Scripting Tutorial-12:** _Sort_ ##

### Usage of 'sort' ###
**Example:**
```
#!/usr/bin/env bash

cat > animals
# dogs
# cats
# birds
# monkeys
# elephants

sort animals # sort lines alphabetically

cat > sports
# cricet
# tennis
# football
# basketball
# wrestling

sort sports # sort lines alphabetically

sort
# Apocalypse
# Avatar
# Forrest Gump
# Saving Private Ryan

# hit "ctrl+d" sorts the lines

```
**Output:**
```
dogs
cats
birds
monkeys
elephants
birds
cats
dogs
elephants
monkeys
cricet
tennis
football
basketball
wrestling
basketball
cricet
football
tennis
wrestling
Apocalypse
Avatar
Forrest Gump
Saving Private Ryan
Apocalypse
Avatar
Forrest Gump
Saving Private Ryan

```
| Command | Description |
|---|---|
| `sort animals` | sorts alphabetically the lines of file |

##**Shell Scripting Tutorial-13:** _Cut Through Your Files_ ##

### Usage of 'cut' ###

**`cut`** uses - as default saperater.  
`cut -d"-" -f 1,3 file_name`  

**_-d_**: specify the delimeter character  
**_-f_**: specify the fields that will be printed  
**Example:**
```
#!/usr/bin/env bash

cat > players
# Name-Sport-Age
# Roger-Tennis-30
# Rafel-Tennis-25
# Tiger-Golf-27
# Michael-Swimmer-27
# Kobe-Basketball-34

cut -d"-" -f 1,3 players # prints 1 and 3 column of players file using - delimeter

```
**Output:**
```
Name-Sport-Age
Roger-Tennis-30
Rafel-Tennis-25
Tiger-Golf-27
Michael-Swimmer-27
Kobe-Basketball-34

Name-Age
Roger-30
Rafel-25
Tiger-27
Michael-27
Kobe-34

```
| Command | Description  |
|---|---|
| `cut -d"-" 1,3 file_name` | prints the 1 and 3 column of the file, and - is delimeter |

##**Shell Scripting Tutorial-14:** _Convert & Copy Files with 'dd'_ ##

### Usage of 'dd' ###

converts all characters from lowercase to uppercase in a file.  
`dd if=test of=test1 conv=ucase`  

converts encoding to european based encoding.  
`dd if=test of=test2 conv=ebcdic`  
**Example:**
```
#!/usr/bin/env bash

cat > test
# this is a test file.

dd if=test of=test1 conv=ucase # converts all lowercase character to uppercase with in a new file.
cat test
cat test1

dd if=test of=test2 conv=ebcdic # conerts encoding to european based encoding.
cat test
cat test2

```
**Output:**
```
this is a test file.
0+1 records in
0+1 records out
21 bytes (21 B) copied, 0.000277341 s, 75.7 kB/s
this is a test file.
THIS IS A TEST FILE.
0+1 records in
0+1 records out
21 bytes (21 B) copied, 0.000301356 s, 69.7 kB/s
this is a test file.
����@��@�@����@����K%
```
| Command | Description |
|---|---|
| `dd if=test of=test1 conv=ucase` | converts all lowercase to uppercase in a new file |
| `dd if=test of=test2 conv=ebcdic` | converts encoding to european based encoding |

##**Shell Scripting Tutorial-15:** _Get Help, View Fancy Text & Reduce File Size_ ##

### Getting Help ###

`man <command name>` shows the help manual of the command.  
`man cat`  

exiting manual page by using Q key.  

### View Fancy Text ###

`banner my name is mustafa celik`  
`banner "my name is mustafa celik"` banner shows 10 character in one line.    

### Reduce File Size ###

reducing the size of a file.  
`compress -v test`  

printing compressed file in a readable format.  
`zcat -v test.Z`  

uncompressing the compressed file.  
`uncompress test.Z`  
**Example:**
```
#!/usr/bin/env bash

man cat

banner my name is mustafa celik # prints fancy text
banner "my name is mustafa celik" # prints fancy text in one line

compress -v test # compress the file
zcat -v test.Z  # prints compressed file readable.

uncompress -v test.Z # uncompress the compresed file.
```
**Output:**
```
Whole Man Page of cat command will be printed.

 #    #   #   #
 ##  ##    # #
 # ## #     #
 #    #     #
 #    #     #
 #    #     #


 #    #    ##    #    #  ######
 ##   #   #  #   ##  ##  #
 # #  #  #    #  # ## #  #####
 #  # #  ######  #    #  #
 #   ##  #    #  #    #  #
 #    #  #    #  #    #  ######


    #     ####
    #    #
    #     ####
    #         #
    #    #    #
    #     ####


 #    #  #    #   ####    #####    ##    ######    ##
 ##  ##  #    #  #          #     #  #   #        #  #
 # ## #  #    #   ####      #    #    #  #####   #    #
 #    #  #    #       #     #    ######  #       ######
 #    #  #    #  #    #     #    #    #  #       #    #
 #    #   ####    ####      #    #    #  #       #    #


  ####   ######  #          #    #    #
 #    #  #       #          #    #   #
 #       #####   #          #    ####
 #       #       #          #    #  #
 #    #  #       #          #    #   #
  ####   ######  ######     #    #    #


 #    #   #   #          #    #    ##    #    #  ######             #     ####
 ##  ##    # #           ##   #   #  #   ##  ##  #                  #    #
 # ## #     #            # #  #  #    #  # ## #  #####              #     ####
 #    #     #            #  # #  ######  #    #  #                  #         #
 #    #     #            #   ##  #    #  #    #  #                  #    #    #
 #    #     #            #    #  #    #  #    #  ######             #     ####

test: No compression -- test unchanged
gzip: test.Z: No such file or directory
gzip: test.Z: No such file or directory

```
| Command | Description |
|---|---|
| `man <command>` | shows the manuel of the command. Note: use Q key to quit. |
| `banner some text` | prints fancy text |
| `banner "some text"` | prints fancy text in one line. Note: limited to 10 character. |
| `compress -v test` | compresses the test file. |
| `zcat -v test.Z` | prints the readable version of the compressed file. |
| `uncompress test.Z` | uncompress the compressed file. |


##**Shell Scripting Tutorial-16:** _Hello World!_ ##

hello world example is implemented using `echo` command.  
**Example:**
```
#!/usr/bin/env bash

echo "Hello World!"
```
**Output:**
```
Hello World!
```
| Command | Description |
|---|---|
| `echo "Hello World!"` | prints hello world to terminal. |

##**Shell Scripting Tutorial-17:** _Use Command in Your Script_ ##

Use commands in the script.  
`pwd`  
`ls -l`  
`banner "The End"`  
**Example:**
```
#!/usr/bin/env bash
# Shell_scripting_tutorial_17: Use Command in Your Script

pwd
ls -l
banner "The End"
```
**Output:**
```
/home/joker/PycharmProjects/bash_script
total 348
-rw-r--r-- 1 joker joker    34 Aug 31 17:11 animals
-rw-r--r-- 1 joker joker    18 Aug 27 21:07 commandlist_tutorial_50
-rw-r--r-- 1 joker joker   507 Aug 27 21:07 create_consecutive_files.sh
-rw-r--r-- 1 joker joker     0 Aug 31 16:59 empty_file1
-rw-r--r-- 1 joker joker     0 Aug 31 16:59 empty_file2
-rw-r--r-- 1 joker joker     0 Aug 31 16:59 empty_file3
drwxr-xr-x 2 joker joker  4096 Aug 31 16:59 folder1

#######                         #######
   #     #    #  ######         #        #    #  #####
   #     #    #  #              #        ##   #  #    #
   #     ######  #####          #####    # #  #  #    #
   #     #    #  #              #        #  # #  #    #
   #     #    #  #              #        #   ##  #    #
   #     #    #  ######         #######  #    #  #####


```


##**Shell Scripting Tutorial-18:** _Shell Variables, Grab User Input Using 'read'_ ##

### Shell Variables ###

Shell scripting has some rules for variables.  
- variable names starts with an **alphabet** or **underscore** symbol.  
- variables are case sensitive. `my_var` and `MY_VAR` are different variables.  

### Grab User Input Using 'read' ###
**read** is used to get user input from terminal.  
`echo "Enter your name: "`  
`read name`  
**Example:**
```
#!/usr/bin/env bash

echo "Please enter your name: "
read my_name
echo "Hello $my_name"
```
**Output:**
```
Please enter your name: 
mustafa celik
Hello mustafa celik

```
| Command | Description |
|---|---|
| `read name` | reads input from user and assign it to name variable |

##**Shell Scripting Tutorial-19:** _Positional Parameters_ ##

Renaming a file using one positional parameter.  
**Example:**
```
#!/usr/bin/env bash

# This file takes a file name as an argument and renames it.
# run following commands for the script:
# cat > test
# this is a test file.
# ctrl+d
# sh video_tutorial_19.sh test

echo "provide a file name to change: "
read name
mv $1 $name
cat $name
```
**Output:**
```
provide a file name to change: 
new_name
falkdsjflad sgadg

```

##**Shell Scripting Tutorial-20:** _More on Positional Parameters_ ##

setting positional parameters from the content of a file.  
`set cat test` this usage is wrong which assigns $1:cat and $2:test  
`echo $*`  
"set \`cat test\`"  this assigns file content as parameters  
`cat test`  
`echo $*`  

özetle  
reverse quotes: ters tirnak isareti  
accent grave: tirnak arasinda komut calistirilan kisim  
**Example:**
```
#!/usr/bin/env bash

chmod 744 $1
ls -l $1

set word1 word2 word3
echo $*
```
**Output:**
```
-rw-r--r-- 1 joker joker   375 Aug 27 21:07 video_tutorial_60.sh
-rw-r--r-- 1 joker joker   201 Aug 27 21:07 video_tutorial_61.sh
-rw-r--r-- 1 joker joker     0 Aug 26 02:08 video_tutorial_62.sh
word1 word2 word3

```
| Command | Description |
|---|---|
| set ``cat test`` | assigns content of test file to positional parameters |
| set ``who am i`` | assigns output of the command to positional parameters |


##**Shell Scripting Tutorial-21:** _Reverse Quotes & Accent Graves_ ##

`set shell scripting is cool`  
`echo $1`  
`echo $2`  
`echo $3`  
`echo $4`  
**Example:**
```
#!/usr/bin/env bash

# Renames a file to file.name
# Where name is the login name of the user executing the script
#
# run following commands before the script:
# cat > test
# my neighbour's dog is annoying.
#
# set cat test
# echo $*
# set `cat test`
# echo $*

name=$1
set `who am i`
mv $name $name.$1

```
**Output:**
```
# name of the file should be changed. type ls to observe.
```
| Command | Description |
|---|---|
| `set word1 word2 word3` | assigns $1: word1 $2: word2 and $3: word3 |
| `echo $*` | prints all positional parameters |


##**Shell Scripting Tutorial-22:** _Count the Number of Command Line Arguments Using '$#'_ ##

Finding number of positional parameters that comes from **command line** and **`set`** command.  
`set this is video tutorial about shell scripting`  
`echo $#`  
**Example:**
```
#!/usr/bin/env bash

# Run following command before the script:
# sh vidoe_tutorial_22.sh *

echo The total number of items in current directory is=$#
```
**Output:**
```
The total number of items in current directory is=91
```
| Command | Description |
|---|---|
| `echo $#` | prints the number of parameter. |

##**Shell Scripting Tutorial-23:** _Math on Integers Using 'expr'_ ##

arithmetic operations on shell script.  
"a=30 b=15"  
"echo ``expr $a + $b``"  
"echo ``expr $a - $b``"  
"echo ``expr $a \* $b``"  
"echo ``expr $a / $b``"  
"echo ``expr $a % $b``"  
**Example:**
```
#!/usr/bin/env bash

# Arithmetic operations

a=30 b=15
echo `expr $a + $b`
echo `expr $a - $b`
echo `expr $a \* $b`
echo `expr $a / $b`
echo `expr $a % $b`
```
**Output:**
```
45
15
450
2
0

```
| Command | Description |
|---|---|
|echo ``expr $a + $b``| addition |
|echo ``expr $a - $b``| substraction |
|echo ``expr $a \* $b``| multiplication |
|echo ``expr $a / $b``| division |
|echo ``expr $a % $b``| modular division |

##**Shell Scripting Tutorial-24:** _Operator Precedence_ ##

/, *, % operations have first priority.  
+, - operations have second priority.  

echo ``expr $a \* \( $b + $c \) / $d``  
**Example:**
```
#!/usr/bin/env bash

# Arithmetic Operation Precedence

a=30 b=15 c=2 d=5
echo `expr $a \* \( $b + $c \) / $d`
```
**Output:**
```
102
```
| Command | Description |
|---|---|
| echo ``expr $a \* \( $b + $c \) / $d``   | operation precedence using \ |

##**Shell Scripting Tutorial-25:** _Math on Real Numbers_ ##

**bc** usage is explained in this tutorial.  
`echo $a + $b | bc`  
`echo $a - $b | bc`  
`echo $a \* $b | bc`  
`echo $a / $b | bc`  

**Example:**
```
#!/usr/bin/env bash
# Floating Point Arithmetic Operations

a=10.5
b=3.5

c=`echo $a + $b | bc`
d=`echo $a - $b | bc`
e=`echo $a \* $b | bc`
f=`echo $a / $b | bc`

echo $c $d $e $f
```
**Output:**
```
14.0 7.0 36.7 3

```
| Command | Description |
|---|---|
| `echo $a + $b (or) bc` | bs is used for floating point operations with pipe or |

##**Shell Scripting Tutorial-26:** _Escape Sequences_ ##

customizing(text color, border etc.) the **echo** outputs.  
- new line: **\n** -> `echo "hello \nworld"`  
- return: **\r** -> `echo "hello \rworld"` basa donerek üzerine yazar.  
- tab: **\t** -> `echo "hello \tworld"`  
- backspace:  **\b** -> `echo "Hey World, \b\b\b\b\b\b\bwhat's up?"` bir onceki karakterin uzerine yaziyor.  
- bold: **\033[1m** **\033[0m** -> `echo "\033[1mHey World, what's up?\033[0m"` writes the text in bold format  
- black background: **\033[7m** **\033[0m** -> `echo "\033[7mHey World, what's up?\033[0m"` prints black background  
**Example:**
```
#!/usr/bin/env bash

# Escape Sequences

echo "Hey World, \nwhat's up?" # new line
echo "Hey World, \rwhat's" # starts from beginning and prints on the previos one
echo "Hey World, \twhat's up?"
echo "Hey World, \b\b\b\b\b\b\bwhat's up?" # comes back one character
echo "\033[1mHey World, what's up?\033[0m" # writes the text in bold format
echo "\033[7mHey World, what's up?\033[0m" # writes the text with black background
```
**Output:**
```
Hey World, 
what's up?
what'srld, 
Hey World, 	what's up?
Hey what's up?
Hey World, what's up?
Hey World, what's up?

```
| Command | Description |
|---|---|
| `echo "hello \nworld"` | new line |
| `echo "hello \rworld"` | return character writes from the beginning over the previous print |
| `echo "hello \tworld"` | tab character |
| `echo "Hey World, \b\b\b\b\b\b\bwhat's up?"` | backspace comes 1 character back |
| `echo "\033[1mHey World, what's up?\033[0m"` | bold character |
| `echo "\033[7mHey World, what's up?\033[0m"` | black background |

##**Shell Scripting Tutorial-27:** _Do Cool Things with 'tput'_ ##

clearing terminal.  
`tput clear`  
determining the number of rows and  columns of the terminal.  
`tput lines` shows number of rows.  
`tput cols` shows number of columns.  
printing character in bold.  
`tput bold`  
positioning the cursor to a specific row and column.  
`tput cup 15 20`  
**Example:**
```
#!/usr/bin/env bash
# tput-in action

tput clear
echo "Total number of rows on screen=\c"
tput lines
echo "Total number of columns on screen=\c"
tput cols
tput cup 15 20 # cursor position row, column
tput bold
echo "This is a bold text"
echo "\033[0mbye bye"

```
**Output:**
```
Total number of rows on screen=35
Total number of columns on screen=134













                    This is a bold text
bye bye

```

| Command | Description |
|---|---|
| `tput clear` | clear the terminal |
| `tput lines`| Total number of rows on screen |
| `tput cols`| Total number of columns on screen|
| `tput cup 15 20`| position cursor to new row and column |
| `tput bold`| print in bold format |
| `echo "\033[0mbye bye"`| ends printing in bold |

##**Shell Scripting Tutorial-28:** _'if-then' Statement in Action_ ##

terminalde her komut calistiktan sonra, komutun basarili olup olmadigini gosteren bir sayi doner.  
bu ciktiyi gormek icin su komut kullanilir:
`mkdir new`  
`echo $?`  

renaming a file using if statement.  
`if mv source.txt target.txt`  
`then`  
`echo "Your file has been succesfully renamed."`  
`fi`  
**Example:**
```
#!/usr/bin/env bash
# if-then statement in action
#
# run the following command before the script:
# touch test
# sh video_tutorial_28.sh 
# sh video_tutorial_28.sh

echo "Enter source and target file names:"
read source target
if mv $source $target
then
echo "Your file has been successfully renamed."
fi
```
**Output:**
```
Enter source and target file names:
test new_name     
Your file has been successfully renamed.

```
| Command |
|---|
|usage of if-then statement |
| `if something_true` | 
| `then` |
| `echo "condition is correct"` |
| `fi` |

##**Shell Scripting Tutorial-29:** _The 'if-then-else' Statement_ ##

renaming a file using if statement.  
`if mv source.txt target.txt`  
`then`  
`echo "Your file has been successfully renamed."`  
`else`
`echo "file has NOT been  renamed."`
`fi`  
**Example:**
```
#!/usr/bin/env bash
# if-then-else statement in action
#
# run the following command before the script:
# touch test
# sh video_tutorial_29.sh
# sh video_tutorial_29.sh

echo "Enter source and target file names."
read source target
if mv $source $target
then
echo "Your file has been successfully renamed."
else
echo "Your file has NOT been successfully renamed."
fi
```
**Output:**
```
bash_script@pc $ sh video_tutorial_29.sh 
Enter source and target file names.
test new_name
Your file has been successfully renamed.
bash_script@pc $ sh video_tutorial_29.sh 
Enter source and target file names.
test new_name
mv: cannot stat ‘test’: No such file or directory
Your file has NOT been successfully renamed.
```
| Command |
|---|
|usage of if-then statement |
| `if something_true_or_false` | 
| `then` |
| `echo "condition is true"` |
| `else`|
| `echo "condition is false"`|
| `fi` |

##**Shell Scripting Tutorial-30:** _Run Checks on Numbers_ ##

if checks statements are following:  
**Example:**
```
#!/usr/bin/env bash

echo "Enter a number between 10 and 20: \c"
read num

if [ $num -lt 10 ]
then 
	echo "That was under the belt partner."
elif [ $num -gt 20 ]
then
	echo "That went over my head."
elif [ $num -eq 10 ]
then
	echo "That is equal to 10."
elif [ $num -le 10 ]
then
	echo "That is less than and equal to 10."
elif [ $num -ge 10 ]
then
	echo "That is greater than and equal to 10."
elif [ $num -ne 10 ]
then
	echo "That is not equal to 10."
else
	echo "Now you are making sense."
fi
```
**Output:**
```
Enter a number between 10 and 20: 12
That is greater than and equal to 10.
```
| Command | Description |
|---|---|
| `-eq` | equal |
| `-lt` | less than |
| `-gt` | greater than |
| `-le` | less than and equal |
| `-ge `| greater than and equal |
| `-ne` | not equal |

##**Shell Scripting Tutorial-31:** _Run Checks on Files_ ##

**character space file**: text files  
**block space file**: video and image files which can not be displayed by text editor  
**directory space file**: folders are also a file  

`if [ -f $fname ]` checks is it file or not.  

**-f**: checks for file  
**-d**: checks for directory  
**-c**: checks for character space file(text file)  
**-b**: checks for block space file(image, video)  
**-r**: checks read permission  
**-w**: checks write permission  
**-x**: checks execute permission  
**-s**: checks if the file size is greater 0 or not  
**Example:**
```
#!/usr/bin/env bash

echo "Enter a name: \c"
read fname
if [ -f $fname ] # checks file
then
    echo "You indeed entered a file name."
fi

if [ -d $fname ] # checks directory
then
    echo "You indeed entered a folder name."
fi

if [ -c $fname ] # checks character space file
then
    echo "You indeed entered a character space(text) file name."
fi

if [ -b $fname ] # checks block space file
then
    echo "You indeed entered a block space(image,videp) file name."
fi

if [ -r $fname ] # checks read permission
then
    echo "File has read permission."
fi

if [ -w $fname ] # checks write permission
then
    echo "File has write permission."
fi

if [ -x $fname ] # checks execute permission
then
    echo "File has execute permission."
fi

if [ -s $fname ] # checks size is greater than 0 or not
then
    echo "File size is gretaer than zero."

```
**Output:**
```
Enter a name: new_name
You indeed entered a file name.
File has read permission.
File has write permission.

```
| Command | Description |
|---|---|
|`if [ -f $fname ]`| checks file or not |
|`if [ -d $fname ]`| checks directory or not |
|`if [ -c $fname ]`| checks character space file or not |
|`if [ -b $fname ]`| checks block space file or not |
|`if [ -r $fname ]`| checks has read permission or not |
|`if [ -w $fname ]`| checks has write permission or not |
|`if [ -x $fname ]`| checks has execute permission or not |
|`if [ -s $fname ]`| checks size is greater than 0 or not |

##**Shell Scripting Tutorial-32:** _Append Text to a File Through Shell Script_ ##

usage of the if else statement and file checks command.  
example code:
`echo "Enter file name:\c"`  
`read fname`  
`if [ -f $fname ]`  
`then`  
`    if [ -w $fname ]`  
`    then`  
`        echo "Type matter to append. To quit press ctrl+d."`  
`        cat >> $fname`  
`    else`  
`        echo "You do not have permission to write."`  
`    fi`  
`fi`  
**Example:**
```
#!/usr/bin/env bash
#
# 1. script ask users to enter a name.
# 2. check the folder exist or not
# 3. if file exists check the user has write permission.
# 4. if the user has write permission, presents append option to user.
# 5. if the user has not write permission, display message show not permitted.

echo "Enter file name:\c"
read fname
if [ -f $fname ]
then
    if [ -w $fname ]
    then
        echo "Type matter to append. To quit press ctrl+d."
        cat >> $fname
    else
        echo "You do not have permission to write."
    fi
fi
```
**Output:**
```
Enter file name:new_name
Type matter to append. To quit press ctrl+d.
skdg
ssdgfs

```
##**Shell Scripting Tutorial-33:** _Run Checks on Strings_ ##

string checks:  
**Example:**
```
#!/usr/bin/env bash
# comparison of the strings (string checks)

str1="Hey You!"
str2="What's up?"
str3="" # null variable
str3=   # null variable

echo "str1: $str1"
echo "str2: $str2"
echo "str3: $str3"


[ "$str1" = "$str2" ] # equal
echo "str1 = str2 \t-> $?"

[ "$str1" != "$str2" ] # not equal
echo "str1 != str2 \t-> $?"

[ -n "$str1" ] # greater than zero
echo "[ -n str1 ] \t-> $?"

[ -n "$str3" ] # greater than zero
echo "[ -n str3 ] \t-> $?"

[ -z "$str1" ] # length of string is zero or not?
echo "[ -z str1 ] \t-> $?"
```
**Output:**
```
str1: Hey You!
str2: What's up?
str3: 
str1 = str2 	-> 1
str1 != str2 	-> 0
[ -n str1 ] 	-> 0
[ -n str3 ] 	-> 1
[ -z str1 ] 	-> 1

```
| Command | Description |
|---|---|
| `[ "$str1" = "$str2" ]` | checks if string are equal |
| `[ "$str1" != "$str2" ]` | checks if string are not equal |
| `[ -n "$str1"` | checks if string length is greater than zero |
| `[ -z "$str1" ]` | checks if string length is zero | 

##**Shell Scripting Tutorial-34:** _Run Checks on StringThe 'AND' Logical Operator_ ##

**-a** is the 'AND' operator for shell scripting.  
Following if statement checks the variable if it is between 50 and 100.  
`if [ $num -le 100 -a $num -ge 50 ]`  
**Example:**
```
#!/usr/bin/env bash

# 1. script ask users to enter a number between 50-100
# 2. store input
# 3. check the input between 50-100

echo "Enter a number between 50 and 100:\c"
read num

if [ $num -le 100 -a $num -ge 50 ]
then
    echo "The number is between 50 and 100."
else
    echo "The number is not between 50 and 100."
fi

```
**Output:**
```
Enter a number between 50 and 100:54
The number is between 50 and 100.

```
| Command | Description |
|---|---|
| `if [ $num -le 100 -a $num -ge 50 ]` | usage of AND operator |  


##**Shell Scripting Tutorial-35:** _Count the Number of Characters in User's Input in Your Script_ ##

checking the number of the character of the variable.  
`if [ 'echo $var | wc -c' -eq 2 ]`
**Example:**
```
#!/usr/bin/env bash

# 1. script ask users to enter a character
# 2. check if one character is entered or not
# 3. if not print invalid input

echo "Enter  a character:\c"
read var

if [ `echo $var | wc -c` -eq 2 ] # check if there is one character or not. 2 because of enter character.
then
    echo "You entered a character."
else
    echo "Invalid input."
fi

```
**Output:**
```
Enter  a character:d
You entered a character.
```
| Command | Description |
|---|---|
| `if [ 'echo $var | wc -c' -eq 2 ]` | check if there is one character or not. 2 because of enter character. |


##**Shell Scripting Tutorial-36:** _The 'OR' Logical Operator_ ##

**-0** is the 'OR' operator for shell scripting.  
Following if statement checks the variable if it is vowel or not.  
`if [ $var  = a -o $var  = e -o $var  = i -o $var  = u -o $var  = o ]`  
**Example:**
```
#!/usr/bin/env bash

# 1. script ask users to enter a character
# 2. check if one character is entered or more than character
# 3. if one character is input, check if it is vowel or not

echo "Enter a lowercase character:\c"
read var

if [ `echo $var | wc -c` -eq 2 ] # check if there is one character or not. 2 because of enter character.
then
    if [ $var  = a -o $var  = e -o $var  = i -o $var  = u -o $var  = o ]
    then
        echo "You entered a vowel."
    else
        echo "You did not enter a vowel."
    fi
else
    echo "Invalid input."
fi
```
**Output:**
```
Enter a lowercase character:m
You did not enter a vowel.

Enter a lowercase character:a
You entered a vowel.
```
| Command | Description |
|---|---|
| `if [ $var  = a -o $var  = e -o $var  = i -o $var  = u -o $var  = o ]` | usage of OR operator |
  
  ##**Shell Scripting Tutorial-37:** _The 'case' Statement_ ##

The case statement is the fourth version of the condition statements.  
1. if
2. if else
3. elif
4. case

usage of case statement:  
**Example:**
```
#!/usr/bin/env bash

# 1. script ask users to enter a character
# 2. check whether the character is lowercase or uppercase or digit or special character

echo "Enter a character:\c"
read var

case $var in
[a-z])
    echo "You entered a lowercase character."
    ;;
[A-Z])
    echo "You entered an uppercase character."
    ;;
[0-9])
    echo "You entered a digit."
    ;;
?)
    echo "You entered a special character."
    ;;
*)
    echo "You entered more than one character."
    ;;
esac

```
**Output:**
```
Enter a character:d
You entered a lowercase character.

Enter a character:D
You entered an uppercase character.

Enter a character:ad
You entered more than one character.

Enter a character:4
You entered a digit.
```
##**Shell Scripting Tutorial-38:** _Another Date with 'case' Statement_ ##

Another example of case statement.  
**Example:**
```
#!/usr/bin/env bash

# 1. script ask users to enter a word
# 2. 1 check if word starts a vowel character or not
# 3. 2 check if the word starts with a digit
# 4. 3 check if the word ends with a digit
# 5. 4 check if the word s 3-letter word

echo "Enter a word:\c"
read word

case $word in
[aeiou]* | [AEIOU]*)
    echo "The words begins with a vowel."
    ;;
[0-9]*)
    echo "The words begins with a digit."
    ;;
*[0-9])
    echo "The words ends with a digit."
    ;;
???)
    echo "The words is a 3-letter word."
    ;;
*)
    echo "Something else."
    ;;
esac
```
**Output:**
```
Enter a word:mustafa
Something else.

Enter a word:234
The words begins with a digit.

Enter a word:msd 
The words is a 3-letter word.

Enter a word:asasdf3
The words begins with a vowel.

Enter a word:dfds3
The words ends with a digit.

```

##**Shell Scripting Tutorial-39:** _The 'while' Loop_ ##

usage of 'while' loop.  
display the number 1 to 10.  
**Example:**
```
#!/usr/bin/env bash
# while loop in action

# 1. display number 1 to 10.

count=1
while [ $count -le 10 ]
do
    echo $count
    count=`expr $count + 1`
done
```
**Output:**
```
1
2
3
4
5
6
7
8
9
10

```
| Command | Description |
|---|---|
|`while [ $count -le 10 ]`| usage of while loop |
|`do`||
|`    echo $count`||
|`done`  ||


##**Shell Scripting Tutorial-40:** _The 'until' Loop_ ##

usage of until loop.  
display the numbers 1 to 9.  
**Example:**
```
#!/usr/bin/env bash
# until loop in action
#
# 1. display number 1 to 9.

count=1
until [ $count -ge 10 ]
do
    echo "$count"
    count=`expr $count + 1`
done

```
**Output:**
```
1
2
3
4
5
6
7
8
9
```
| Command | Description |
|---|---|
|`until [ $count -gt 10 ]`| usage of until loop |
|`do`||
|`    echo $count`||
|`done`  ||

##**Shell Scripting Tutorial-41:** _The 'for' Loop_ ##

usage of for loop.  
for loop is pretty different than until and while loop.  
**Example:**
```
#!/usr/bin/env bash
# 1. display folders in the directory not the files

# list the directories
echo "\ndirectories: "
for item in * # asterics means all the items in the current directory
do
    if [ -d $item ]
    then
        echo "$item"
    fi
done

# list the files
echo "\nfiles:"
for item in * # asterics means all the items in the current directory
do
    if [ -f $item ]
    then
        echo "$item"
    fi
done
```
**Output:**
```
directories: 
folder1
folder2
folder3
sandbox

files:
animals
commandlist_tutorial_50
create_consecutive_files.sh
empty_file1
empty_file2
empty_file3

```
| Command | Description |
|---|---|
|`for item in *`| usage of for loop. * means all items in current directory |
|`do`||
|`...`||
|`done`||


##**Shell Scripting Tutorial-42:** _Rant & Little Work_ ##

comparison of real number.  

another comparison for floating point numbers.  
**Example:**
```
#!/usr/bin/env bash
# 1. comparison of the real numbers

echo "following method is for integers and not working for real numbers: "
echo "a=4.5
b=4.5
[ a -eq b ]
echo ?
"

echo "change real numbers to string to compare"
echo "a=4.5
b=4.5
[ "a" = "b" ]
echo ?
"

a=4.5
b=4.5
[ "$a" = "$b" ]
echo $?

# another comparison example
echo "\nanother comparison example:"
echo "min=12.45
val=10.35

if [ 1 -eq (echo {val} < {min}| bc) ]
then
    min={val}
fi

echo min"

min=12.45
val=10.35

if [ 1 -eq "$(echo "${val} < ${min}" | bc)" ]
then
    min=${val}
fi

echo "$min"
```
**Output:**
```
following method is for integers and not working for real numbers: 
a=4.5
b=4.5
[ a -eq b ]
echo ?

change real numbers to string to compare
a=4.5
b=4.5
[ a = b ]
echo ?

0

another comparison example:
min=12.45
val=10.35

if [ 1 -eq (echo {val} < {min}| bc) ]
then
    min={val}
fi

echo min
10.35

```
| Command | Description |
|---|---|
|`[ $a -eq $b ]`| this is for integers and not working for real numbers |
|`[ "$a" = "$b" ]`| this converts number to string and compares them |
|`min=12.45`| another comparison example for floating point numbers |  
|`val=10.35`|  
|`if [ 1 -eq "$(echo "${val} < ${min}" | bc)" ]`|  
|`then`|    
|`    min=${val}`|   
|`fi`|  
|`echo "$min"`|  

##**Shell Scripting Tutorial-43:** _Search Patterns Using 'grep'_ ##

Usage of 'grep' command.  
**grep** is same as using **ctrl+f** option in a file.  

**grep -i**: ignores case sensitivity
**grep -n**: shows line numbers for search results.
**grep -c**: shows the total number of the line that has money.
**grep -v**: shows the grep result for not matching lines.
**Example:**
```
#!/usr/bin/env bash
# 1. search text in file text_tutorial_43

# run the following command before the script:
# create a file name text_tutorial_43 with text contains money word.

echo "Search money in the file with case sensitivity:"
grep money text_tutorial_43

echo "\nSearch money in the file without case sensitivity:"
grep -i money text_tutorial_43

echo "\nSearch money in the file with case sensitivity and line numbers:"
grep -i -n money text_tutorial_43

echo "\nSearch money in the file with case sensitivity, line numbers and shows count:"
grep -i -n -c money text_tutorial_43

echo "\nSearch money in the file with case sensitivity, line numbers and shows count of money does not exist:"
grep -i -n -c -v money text_tutorial_43
```
**Output:**
```
Search money in the file with case sensitivity:

Search money in the file without case sensitivity:
Money, get away
Money, it's a gas
Money, get back
Money, it's a hit 
Money, it's a crime 
Money, so they say 

Search money in the file with case sensitivity and line numbers:
1:Money, get away
3:Money, it's a gas
8:Money, get back
10:Money, it's a hit 
15:Money, it's a crime 
17:Money, so they say 

Search money in the file with case sensitivity, line numbers and shows count:
6

Search money in the file with case sensitivity, line numbers and shows count of money does not exist:
16
```
| Command | Description |
|---|---|
| `grep money text_file` | search "money" in text_file |
| `grep -i money text_file` | search "money" in text_file by ignoring case sensitivity. |
| `grep -i -n money text_file` | search "money" in text_file by ignoring case sensitivity, and shows line numbers |
| `grep -i -c money text_file` | search "money" in text_file by ignoring case sensitivity, and shows count of money line |
| `grep -i -v money text_file` | search "money" in text_file by ignoring case sensitivity, and shows the lines that has no money |



##**Shell Scripting Tutorial-44:** _The 'passwd' File Explained_ ##

Usage of file "passwd".  

`cat /etc/passwd` command shows the content of passwd file.  
**joker:x:1000:1000:joker,,,:/home/joker:/bin/bash**  

filed 1 -> **joker**: user name  
field 2 -> **x**: password is encrypted for the user  
field 3 -> **1000**: uid (userid). from 1 to 99 id are reserved for predefined accounts  
field 4 -> **1000**: group id.
field 5 -> **joker,,,**: the name of the computer
field 6 -> **/home/joker**: home folder
field 7 -> **/bin/bash**: shell 
**Example:**
```
#!/usr/bin/env bash

cat /etc/passwd

echo "\n\nfiled 1 -> **joker**: user name
field 2 -> **x**: password is encrypted for the user
field 3 -> **1000**: uid (userid). from 1 to 99 id are reserved for predefined accounts
field 4 -> **1000**: group id.
field 5 -> **joker,,,**: the name of the computer
field 6 -> **/home/joker**: home folder
field 7 -> **/bin/bash**: shell "
```
**Output:**
```
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
libuuid:x:100:101::/var/lib/libuuid:
syslog:x:101:104::/home/syslog:/bin/false
messagebus:x:102:106::/var/run/dbus:/bin/false
usbmux:x:103:46:usbmux daemon,,,:/home/usbmux:/bin/false
dnsmasq:x:104:65534:dnsmasq,,,:/var/lib/misc:/bin/false
avahi-autoipd:x:105:114:Avahi autoip daemon,,,:/var/lib/avahi-autoipd:/bin/false
kernoops:x:106:65534:Kernel Oops Tracking Daemon,,,:/:/bin/false
avahi:x:107:116:Avahi mDNS daemon,,,:/var/run/avahi-daemon:/bin/false
colord:x:108:118:colord colour management daemon,,,:/var/lib/colord:/bin/false
hplip:x:109:7:HPLIP system user,,,:/var/run/hplip:/bin/false
pulse:x:110:119:PulseAudio daemon,,,:/var/run/pulse:/bin/false
mdm:x:111:121:MDM Display Manager:/var/lib/mdm:/bin/false
rtkit:x:112:123:RealtimeKit,,,:/proc:/bin/false
saned:x:113:124::/home/saned:/bin/false
speech-dispatcher:x:114:29:Speech Dispatcher,,,:/var/run/speech-dispatcher:/bin/sh
joker:x:1000:1000:joker,,,:/home/joker:/bin/bash


filed 1 -> **joker**: user name
field 2 -> **x**: password is encrypted for the user
field 3 -> **1000**: uid (userid). from 1 to 99 id are reserved for predefined accounts
field 4 -> **1000**: group id.
field 5 -> **joker,,,**: the name of the computer
field 6 -> **/home/joker**: home folder
field 7 -> **/bin/bash**: shell 
```
| Command | Description |
|---|---|
| `cat /etc/passwd` | shows info about the accounts of the computer |
| `joker:x:1000:1000:joker,,,:/home/joker:/bin/bash` | output of the file |
| `joker` | field 1: username |
| `x` | field 2: password |
| `1000` | field 3: user id |
| `1000` | field 4: group id |
| `joker,,,` | field 5: name of the computer |
| `/home/joker` | field 6: home folder of the user |
| `/bin/bash` | field 7: shell |


##**Shell Scripting Tutorial-45:** _The Internal Field Separator_ ##

Usage of IFS (internal field separator)   

`set this is the forty fifth tutorial.` sets the positional parameter  

default IFS character is space. It can be changed as following:  
`IFS=:` so, IFS is changed to :  
**Example:**
```
#!/usr/bin/env bash
# 1. change the value of the IFS and set will be changed.

# usage of default IFS
echo "default IFS usage:"
line="Shell scripting is fun."
set $line
echo $1
echo $2
echo $3
echo $4

echo "\nIFS is changed to ':' and the result is:"
IFS=: # IFS is changed to :
set $line
echo $1
echo $2
echo $3
echo $4

echo "\ntext is separated using column character and IFS is column:"
line="Shell:scripting:is:fun."
set $line
echo $1
echo $2
echo $3
echo $4
```
**Output:**
```
default IFS usage:
Shell
scripting
is
fun.

IFS is changed to ':' and the result is:
Shell scripting is fun.




text is separated using column character and IFS is column:
Shell
scripting
is
fun.

```
| Command | Description |
|---|---|
| `IFS=:` | Internal file separator is changed |


##**Shell Scripting Tutorial-46:** _'passwd' File Revisited_ ##

Example of using passwd file, IFS, grep and set command.
**Example:**
```
#!/usr/bin/env bash
# 1. shows some information from passwd file to users.
# 2. IFS is used.

echo "Enter Username:\c"
read logname

# takes the line that is associated with the username
line=`grep $logname /etc/passwd`

IFS=: # the separator is : in passwd file
set $line

echo "Username:$1"
echo "User ID: $3"
echo "Group ID: $4"
echo "Comment Field: $5"
echo "Home Folder: $6"
echo "Default shell: $7"
```
**Output:**
```
Enter Username:joker
Username:joker
User ID: 1000
Group ID: 1000
Comment Field: joker,,,
Home Folder: /home/joker
Default shell: /bin/bash
```
##**Shell Scripting Tutorial-47:** _Reading From a File_ ##

First, file should load to **exec**, at the same time current settings should be kept.  
**terminal** variable holds the current settings and it assigns back the settings after reading operation.  

`terminal='tty'`  
`exec < $fname`  

`while read line`   
`do`  
`    echo "$line"`  
`done`  

`exec < $terminal`  
**Example:**
```
#!/usr/bin/env bash
# 1. script shows the line numbers of the text with the text

# run the following command before the script:
# create text file name text_tutorial_47

echo "Enter a file name(text_tutorial_47):\c"
read fname

if [ -z "$name" ]
then
    echo "exit"
fi

echo "\ntty contains info about terminal setting."
terminal=`tty`

exec < $fname

count=1
while read line
do
    echo $count.$line
    count=`expr $count + 1`
done

exec < $terminal
```
**Output:**
```
Enter a file name(text_tutorial_47):text_tutorial_47
exit

tty contains info about terminal setting.
1.Money, get away
2.Get a good job with more pay and you're okay
3.Money, it's a gas
4.Grab that cash with both hands and make a stash
5.New car, caviar, four star daydream
6.Think I'll buy me a football team
7.
8.Money, get back
9.I'm all right Jack keep your hands off of my stack
10.Money, it's a hit
11.Don't give me that do goody good bullshit
12.I'm in the high-fidelity first class traveling set
13.And I think I need a Lear jet
14.
15.Money, it's a crime
16.Share it fairly but don't take a slice of my pie
17.Money, so they say
18.Is the root of all evil today
19.But if you ask for payrise it's no surprise
20.That they're giving none away
21.Away, away, way
22.Away, away, away

```
| Command | Description |
|---|---|
| `terminal='tty'` | takes the current settings of the terminal |
| `exec < $fname` | loads the file content |
| ` while read line` | reads the line of the exec which is $fname in this case |

##**Shell Scripting Tutorial-48:** _Sleep While You are at Work_ ##

Usage of **sleep** command. Sleep makes a time delay on the execution of shell.  
**Example:**
```
#!/usr/bin/env bash
# 1. ask user to enter a sentence
# 2. display one word at a time and use time delay

echo "Enter a sentence:\c"
read str
for word in $str
do
    echo "$word"
    sleep 2
done
```
**Output:**
```
Enter a sentence:shell script tutorial is cool :)
shell
script
tutorial
is
cool
:)
```
| Command | Description |
|---|---|
| `sleep 5` | shell execution sleeps 5 seconds |


##**Shell Scripting Tutorial-49:** _Count the number of words & sentences in a text file without using 'wc'_ ##

An example is ran.  

**Example:**
```
#!/usr/bin/env bash
# 1. counts line number and word number
#
# run the following command before the script:
# create text file name text_tutorial_49 with following content
# Money, get away
# Get a good job with more pay and you're okay 
# Money, it's a gas
# Grab that cash with both hands and make a stash

echo "Enter a file name(text_tutorial_49):\c"
read fname 

terminal=`tty`

exec < $fname

nol=0 # number of lines
now=0 # number of words

while read line
do
	nol=`expr $nol + 1`
	set $line
	now=`expr $now + $#`
	# for word in $line
	# do 
	# 	now=`expr $now + 1`
	# done
done

echo "number of lines: $nol"
echo "number of words: $now"

exec < $terminal
```
**Output:**
```
Enter a file name(text_tutorial_49):text_tutorial_49
number of lines: 3
number of words: 17

```
##**Shell Scripting Tutorial-50:** _Fetch & Redirect Man Pages of commands using 'for loop'_ ##

**Example:**
```
#!/usr/bin/env bash
# 1. use the command in the commandlist_tutorial_50
# 2. iterate the commands using for loop
#
# run the following command before the script:
# create a file name commandlist_tutorial_50 with the following content:
# cat
# date
# cal
# touch
# run command and check the file "helpfile"

for cmd in `cat commandlist_tutorial_50`
do
    man $cmd >> helpfile
done
```
**Output:**
```
# take a look to content of helpfile
```
| Command | Description |
|---|---|
| `man cat >> helpfile` | appends output of man command to helpfile |
| `for cmd in 'cat commandlist'` | for loop iteration of a file |


##**Shell Scripting Tutorial-51:** _Nested Loops_ ##

Example for nested loop.  
**Example:**
```
#!/usr/bin/env bash
# 1. display all combination of  number 1 2 3

a=1
while [ $a -le 3 ]
do
    b=1
    while [ $b -le 3 ]
    do
        c=1
        while [ $c -le 3 ]
        do
            echo "$a$b$c"
            c=`expr $c + 1`
        done
        b=`expr $b + 1`
    done
    a=`expr $a + 1`
done

```
**Output:**
```
111
112
113
121
122
123
131
132
133
211
212
213
221
222
223
231
232
233
311
312
313
321
322
323
331
332
333
```
##**Shell Scripting Tutorial-52:** _The 'break' Statement_ ##

break terminates the loop.  
**Example:**
```
#!/usr/bin/env bash
# 1. generate 10 number using while loop

count=1
while [ $count -le 10 ]
do
    if [ $count -eq 6 ]
    then
        break
    fi
    echo $count
    count=`expr $count + 1`
done

echo "We are out of the loop"
```
**Output:**
```
1
2
3
4
5
We are out of the loop

```
| Command | Description |
|---|---|
| `break` | ends the loop iteration |


##**Shell Scripting Tutorial-53:** _The 'continue' Statement_ ##

continue sends execution the beginning of the loop.  
**Example:**
```
#!/usr/bin/env bash
# 1. generate 10 number using while loop

count=0
while [ $count -le 9 ]
do
    count=`expr $count + 1`
    if [ $count -eq 5 ]
    then
        continue
    fi
    echo $count
done

echo "End of the loop"
```
**Output:**
```
1
2
3
4
6
7
8
9
10
End of the loop
```
| Command | Description |
|---|---|
| `continue` | returns back to start of loop |

##**Shell Scripting Tutorial-54:** _More on Metacharacters_ ##

Running more than one command a line.  
`ls ; cal ; banner "mustafa celik"`
**Example:**
```
#!/usr/bin/env bash

# run the following command before the script:
# create file text_tutorial_54 with some text

ls ; cal ; banner "mustafa celik"

grep -i money text_tutorial_54 > pattern && echo "Task was completed."

cat pattern
```
**Output:**
```
animals			     script_2_tutorial_61  video_tutorial_10.sh  video_tutorial_29.sh  video_tutorial_48.sh
commandlist_tutorial_50      script_3_tutorial_61  video_tutorial_11.sh  video_tutorial_30.sh  video_tutorial_49.sh
create_consecutive_files.sh  sports		   video_tutorial_12.sh  video_tutorial_31.sh  video_tutorial_50.sh
empty_file1		     test1		   video_tutorial_13.sh  video_tutorial_32.sh  video_tutorial_51.sh
empty_file2		     test2		   video_tutorial_14.sh  video_tutorial_33.sh  video_tutorial_52.sh
empty_file3		     test_file		   video_tutorial_15.sh  video_tutorial_34.sh  video_tutorial_53.sh
folder1			     test_file2		   video_tutorial_16.sh  video_tutorial_35.sh  video_tutorial_54.sh
folder2			     text_tutorial_43	   video_tutorial_17.sh  video_tutorial_36.sh  video_tutorial_55.sh
folder3			     text_tutorial_47	   video_tutorial_18.sh  video_tutorial_37.sh  video_tutorial_56.sh
helpfile		     text_tutorial_49	   video_tutorial_19.sh  video_tutorial_38.sh  video_tutorial_57.sh
merged_test_files	     text_tutorial_54	   video_tutorial_20.sh  video_tutorial_39.sh  video_tutorial_58.sh
my.joker		     video_tutorial_02.sh  video_tutorial_21.sh  video_tutorial_40.sh  video_tutorial_59.sh
new			     video_tutorial_03.sh  video_tutorial_22.sh  video_tutorial_41.sh  video_tutorial_60.sh
new_name		     video_tutorial_04.sh  video_tutorial_23.sh  video_tutorial_42.sh  video_tutorial_61.sh
old			     video_tutorial_05.sh  video_tutorial_24.sh  video_tutorial_43.sh  video_tutorial_62.sh
old_soft		     video_tutorial_06.sh  video_tutorial_25.sh  video_tutorial_44.sh
players			     video_tutorial_07.sh  video_tutorial_26.sh  video_tutorial_45.sh
sandbox			     video_tutorial_08.sh  video_tutorial_27.sh  video_tutorial_46.sh
script_1_tutorial_61	     video_tutorial_09.sh  video_tutorial_28.sh  video_tutorial_47.sh
    August 2016       
Su Mo Tu We Th Fr Sa  
    1  2  3  4  5  6  
 7  8  9 10 11 12 13  
14 15 16 17 18 19 20  
21 22 23 24 25 26 27  
28 29 30 31           
                      

 #    #  #    #   ####    #####    ##    ######    ##             ####   ######
 ##  ##  #    #  #          #     #  #   #        #  #           #    #  #
 # ## #  #    #   ####      #    #    #  #####   #    #          #       #####
 #    #  #    #       #     #    ######  #       ######          #       #
 #    #  #    #  #    #     #    #    #  #       #    #          #    #  #
 #    #   ####    ####      #    #    #  #       #    #           ####   ######

Task was completed.
Money, get away
Money, it's a gas
Money, get back
Money, it's a hit 
Money, it's a crime 
Money, so they say 

```
| Command | Description |
|---|---|
| `ls ; cal ; banner "hello"` | running more than one command |
| `grep -i money text_tutorial_54 > pattern && echo "Task was completed."`| && works if first part is ok|

##**Shell Scripting Tutorial-55:** _Adding & Removing Users_ ##

by using GUI user can be added and deleted.  

| Command | Description |
|---|---|
| `sudo login` | change the user |


##**Shell Scripting Tutorial-56:** _Know when users log in Part One_ ##
Login example.  
**Example:**
```
#!/usr/bin/env bash
# 1. checks every minute the user login or not

echo "Enter username:\c"
read logname

time=0

while true
do
	who | grep "$logname" > /dev/null
	if [ $? -eq 0 ]
	then
		echo "$logname has logged in."
		if [ $time -ne 0 ]
		then
			echo "$logname was $time minutes late in logging in."
		fi
		exit
	else
		time=`expr $time + 1`
		sleep 60
	fi
done
```
**Output:**
```
Enter username:joker
joker has logged in.

```

##**Shell Scripting Tutorial-57:** _Know when users log in Part Two_ ##

example of login.
**Example:**
```
#!/usr/bin/env bash
# 1. checks every minute the user login or not

echo "Enter username:\c"
read logname

grep "$logname" /etc/passwd > /dev/null
if [ $? -eq 0 ]
then
	echo "Wait..."
else
	echo "User not found."
fi	

time=0

while true
do
	who | grep "$logname" > /dev/null
	if [ $? -eq 0 ]
	then
		echo "$logname has logged in."
		if [ $time -ne 0 ]
		then
			echo "$logname was $time minutes late in logging in."
		fi
		exit
	else
		time=`expr $time + 1`
		sleep 60
	fi
done
```
**Output:**
```
Enter username:joker
Wait...
joker has logged in.

```
| Command | Description |
|---|---|
| `grep "$logname" /etc/passwd > /dev/null` | checking the user exists or not |
| `if [ $? -eq 0 ]`||

##**Shell Scripting Tutorial-58:** _Know when users log in Final Part_ ##

loging example is implemented.  
**Example:**
```
#!/usr/bin/env bas
# Shell_scripting_tutorial_58:  Know when users log in Final Part
#
# 1. checks every minute the user login or not

echo "Enter username:\c"
read logname

grep "$logname" /etc/passwd > /dev/null
if [ $? -eq 0 ]
then
	echo "Wait..."
else
	echo "User not found."
fi	

time=0

while true
do
	who | grep "$logname" > /dev/null
	if [ $? -eq 0 ]
	then
		echo "$logname has logged in."
		if [ $time -ne 0 ]
		then
			if [ $time -gt 60 ]
			then
				min=`expr $time / 60`
				sec=`expr $time % 60`
				echo "$logname was $min minutes and $sec seconds late in logging in."
			else
				sec=$time
				echo "$logname was $sec seconds late in logging in."
			fi
		fi
		exit
	else
		time=`expr $time + 1`
		sleep 1
	fi
done
```
**Output:**
```
Enter username:joker
Wait...
joker has logged in.

```
##**Shell Scripting Tutorial-59:** _Communicate with other users using 'write'_ ##

Both users must be logged in different terminals.  

`write username`  the writer command.  
`mesg -y` the receiver command.  

`finger` shows the terminal of other users.  
**Example:**
```
#!/usr/bin/env bash
# 1. checks every minute the user login or not
# 
# run the following command before the script:
# both users must be logged in different terminal.

write newuser2

# on the other terminal following command shoul be ran.
mesg y

# shows the terminal list of users to communicate.
finger
```

| Command | Description |
|---|---|
| `write username` | message command |
| `mesg -y`| receiver command to take messages |
| `finger` | terminal list for messaging |


##**Shell Scripting Tutorial-60:** _Create Your Own Commands Using Functions_ ##

following is the function usage.  
run the following command to initialize the function:  

use following command to release the function:  
`$ unset youtube`
**Example:**
```
#!/usr/bin/env bash
# run the following command before the script:
# write functions
# change the permissions
# run the script
# $. video_tutorial_60.sh
# $ youtube
# $ byebye
# use unset to delete function
# $ unset youtube

youtube()
{
	echo "Good Morning."
}
byebye()
{
	cal
}
```

| Command | Description |
|---|---|
| `unset youtube` | removes the function |


##**Shell Scripting Tutorial-61:** _Executing Multiple Scripts_ ##

Script should run at the last line of the previous script. 
**Example:**
```
#!/usr/bin/env bash 
# run the following command before the script:
# prepare 3 scripts which calls another consequently.

sh script_1_tutorial_61
```
**Output:**
```
                                                           #
  ####    ####   #####      #    #####    #####           ##
 #       #    #  #    #     #    #    #     #            # #
  ####   #       #    #     #    #    #     #              #
      #  #       #####      #    #####      #              #
 #    #  #    #  #   #      #    #          #              #
  ####    ####   #    #     #    #          #            #####

                                                         #####
  ####    ####   #####      #    #####    #####         #     #
 #       #    #  #    #     #    #    #     #                 #
  ####   #       #    #     #    #    #     #            #####
      #  #       #####      #    #####      #           #
 #    #  #    #  #   #      #    #          #           #
  ####    ####   #    #     #    #          #           #######

 #####                                                   #####
#     #   ####   #####      #    #####    #####         #     #
#        #    #  #    #     #    #    #     #                 #
 #####   #       #    #     #    #    #     #            #####
      #  #       #####      #    #####      #                 #
#     #  #    #  #   #      #    #          #           #     #
 #####    ####   #    #     #    #          #            #####


```

> Written with [StackEdit](https://stackedit.io/).
