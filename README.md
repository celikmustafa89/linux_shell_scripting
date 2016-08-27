# SHELL SCRIPTING #
1.  Shell Scripting Tutorial-1  : **Introduction**  
2.  Shell Scripting Tutorial-2  : **Shell, Kernel, Terminal & More**  
3.  Shell Scripting Tutorial-3  : **View System Date, Calender**  
4.  Shell Scripting Tutorial-4  : **Create Files & Directories**  
5.  Shell Scripting Tutorial-5  : **Text Files: Create, Merge & Play**  
6.  Shell Scripting Tutorial-6  : **Rename & Delete Files & Directories**  
7.  Shell Scripting Tutorial-7  : **Create Copies, Links to Files & Directories**  
8.  Shell Scripting Tutorial-8  : **File Permissions**  
9.  Shell Scripting Tutorial-9  : **See What's In Using '*ls*'**  
10. Shell Scripting Tutorial-10: **Change File Permissions Using '*chmod*'**  
11. Shell Scripting Tutorial-11: **Count Lines, Words & Characters Using '*wc*'**  
12. Shell Scripting Tutorial-12: **Sort**  
13. Shell Scripting Tutorial-13: **Cut Through Your Files**  
14. Shell Scripting Tutorial-14: **Convert & Copy Files With '*dd*'**  
15. Shell Scripting Tutorial-15: **Get Help, View Fancy Text & Reduce File Size**  
16. Shell Scripting Tutorial-16: **Hello World!**  
17. Shell Scripting Tutorial-17: **Use Commands In Your Scripts**  
18. Shell Scripting Tutorial-18: **Shell Variables, Grab User Input Using 'read'**  
19. Shell Scripting Tutorial-19: **Positional Parameters**  
20. Shell Scripting Tutorial-20: **More On Positional Parameters**  
21. Shell Scripting Tutorial-21: **Reverse Quotes Or Accent Graves**  
22. Shell Scripting Tutorial-22: **Count The Number of Command Line Arguments Using $**  
23. Shell Scripting Tutorial-23: **Math On Integers Using 'expr'**  
24. Shell Scripting Tutorial-24: **Operator Precedence**  
25. Shell Scripting Tutorial-25: **Math On Real Numbers**  
26. Shell Scripting Tutorial-26: **Escape Sequences**  
27. Shell Scripting Tutorial-27: **Do Cool Things With 'tput'**  
28. Shell Scripting Tutorial-28: **'if-then' Statement in Action**  
29. Shell Scripting Tutorial-29: **The 'if-then-else' Statement**  
30. Shell Scripting Tutorial-30: **Run Checks on Numbers**  
31. Shell Scripting Tutorial-31: **Run Checks On Files**  
32. Shell Scripting Tutorial-32: **Append Text to a File Through Shell Script**  
33. Shell Scripting Tutorial-33: **Run Checks On Strings**  
34. Shell Scripting Tutorial-34: **The 'AND' Logical Operator**  
35. Shell Scripting Tutorial-35: **Count The Number of Characters in User's Input in Your Script**  
36. Shell Scripting Tutorial-36: **The 'OR' Logical Operator**  
37. Shell Scripting Tutorial-37: **The 'case' Statement**  
38. Shell Scripting Tutorial-38: **Another Date With 'case' Statement**  
39. Shell Scripting Tutorial-39: **The 'while' Loop**  
40. Shell Scripting Tutorial-40: **The 'until' Loop**  
41. Shell Scripting Tutorial-41: **The 'for' Loop**  
42. Shell Scripting Tutorial-42: **Rant & Little Work**  
43. Shell Scripting Tutorial-43: **Search Patterns Using 'grep'**  
44. Shell Scripting Tutorial-44: **The 'passwd' File Explained**  
45. Shell Scripting Tutorial-45: **The Internal Field Separator**  
46. Shell Scripting Tutorial-46: **'passwd' File Revisited**  
47. Shell Scripting Tutorial-47: **Reading From a File**  
48. Shell Scripting Tutorial-48: **Sleep while you are at work**  
49. Shell Scripting Tutorial-49: **Count the number of words & sentences in a text file without using 'wc'**  
50. Shell Scripting Tutorial-50: **Fetch & Redirect Man Pages of commands using 'for loop'**  
51. Shell Scripting Tutorial-51: **Nested Loops**  
52. Shell Scripting Tutorial-52: **The 'break' Statement**  
53. Shell Scripting Tutorial-53: **The 'continue' Statement**  
54. Shell Scripting Tutorial-54: **More on Metacharacters**  
55. Shell Scripting Tutorial-55: **Adding & Removing Users**  
56. Shell Scripting Tutorial-56: **Know when users log in Part One**  
57. Shell Scripting Tutorial-57: **Know when users log in Part Two**  
58. Shell Scripting Tutorial-58: **Know when users log in Final Part**  
59. Shell Scripting Tutorial-59: **Communicate with other users using 'write'**  
60. Shell Scripting Tutorial-60: **Create Your Own Commands Using Functions**  
61. Shell Scripting Tutorial-61: **Executing Multiple Scripts**  



##**Shell Scripting Tutorial-1:** _Introduction_ ##

- Install a linux distribution.

## **Shell Scripting Tutorial-2:** _Shell, Kernel, Terminal and More_ ##

**Shell** is an interface between user and the UNIX Kernel.  
**UNIX Kernel** manages the resources and hardware.  
**Terminal** provides access to shell.  
  
\<username>@\<machinename>:~$ terminal commands must be lowercase.  
  

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
date commands:  
  
| Command  | Description |
|---|---|
| `date`  | prints date as "Mon Aug  8 14:37:04 EEST 2016" |
| `date '+DATE: %m-%y%nTIME: %H:%M:%S'` | prints date as "DATE: 08-16 TIME: 14:40:33"|

##**Shell Scripting Tutorial-4:** _Create Files & Directories_ ##

**touch** is used to create empty files.  
**mkdir** is used to create empty folder.  
**cd** is used to navigate inside folders.  

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

`**wc file**`  
output:  
`4  7 48 file`  
4 : number of lines  
7 : number of words  
48: number of characters  

`wc -l file` show line count  
`wc -w file` show word count  
`wc -c file` show character count  

| Command | Description |
|---|---|
| `file *` | shows file types of all files |
| `wc file` | shows number of lines, words and chracters of file |
| `wc -l file` | shows number of lines |
| `wc -w file` | shows number of words |
| `wc -c file` | shows number of chracters |

##**Shell Scripting Tutorial-12:** _Sort_ ##

### Usage of 'sort' ###

| Command | Description |
|---|---|
| `sort animals` | sorts alphabetically the lines of file |

##**Shell Scripting Tutorial-13:** _Cut Through Your Files_ ##

### Usage of 'cut' ###

**`cut`** uses - as default saperater.  
`cut -d"-" -f 1,3 file_name`  

**_-d_**: specify the delimeter character  
**_-f_**: specify the fields that will be printed  

| Command | Description  |
|---|---|
| `cut -d"-" 1,3 file_name` | prints the 1 and 3 column of the file, and - is delimeter |

##**Shell Scripting Tutorial-14:** _Convert & Copy Files with 'dd'_ ##

### Usage of 'dd' ###

converts all characters from lowercase to uppercase in a file.  
`dd if=test of=test1 conv=ucase`  

converts encoding to european based encoding.  
`dd if=test of=test2 conv=ebcdic`  

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

| Command | Description |
|---|---|
| `echo "Hello World!"` | prints hello world to terminal. |

##**Shell Scripting Tutorial-17:** _Use Command in Your Script_ ##

Use commands in the script.  
`pwd`  
`ls -l`  
`banner "The End"`  



##**Shell Scripting Tutorial-18:** _Shell Variables, Grab User Input Using 'read'_ ##

### Shell Variables ###

Shell scripting has some rules for variables.  
- variable names starts with an **alphabet** or **underscore** symbol.  
- variables are case sensitive. `my_var` and `MY_VAR` are different variables.  

### Grab User Input Using 'read' ###
**read** is used to get user input from terminal.  
`echo "Enter your name: "`  
`read name`  

| Command | Description |
|---|---|
| `read name` | reads input from user and assign it to name variable |

##**Shell Scripting Tutorial-19:** _Positional Parameters_ ##

Renaming a file using one positional parameter.  


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

| Command | Description |
|---|---|
| `set word1 word2 word3` | assigns $1: word1 $2: word2 and $3: word3 |
| `echo $*` | prints all positional parameters |


##**Shell Scripting Tutorial-22:** _Count the Number of Command Line Arguments Using '$#'_ ##

Finding number of positional parameters that comes from **command line** and **`set`** command.  
`set this is video tutorial about shell scripting`  
`echo $#`  

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

| Command | Description |
|---|---|
| echo ``expr $a \* \( $b + $c \) / $d``   | operation precedence using \ |

##**Shell Scripting Tutorial-25:** _Math on Real Numbers_ ##

**bc** usage is explained in this tutorial.  
`echo $a + $b | bc`  
`echo $a - $b | bc`  
`echo $a \* $b | bc`  
`echo $a / $b | bc`  


| Command | Description |
|---|---|
| `echo $a + $b | bc` | bs is used for floating point operations with pipe(|) |

##**Shell Scripting Tutorial-26:** _Escape Sequences_ ##

customizing(text color, border etc.) the **echo** outputs.  
- new line: **\n** -> `echo "hello \nworld"`  
- return: **\r** -> `echo "hello \rworld"` basa donerek üzerine yazar.  
- tab: **\t** -> `echo "hello \tworld"`  
- backspace:  **\b** -> `echo "Hey World, \b\b\b\b\b\b\bwhat's up?"` bir onceki karakterin uzerine yaziyor.  
- bold: **\033[1m** **\033[0m** -> `echo "\033[1mHey World, what's up?\033[0m"` writes the text in bold format  
- black background: **\033[7m** **\033[0m** -> `echo "\033[7mHey World, what's up?\033[0m"` prints black background  

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
`num=3`  
`if [ $num -eq 10]`  
`then`  
    `echo "it is equal to 10"`  
`elif [ $num -lt 10 ]`  
`then`  
    `echo "less than 10"`  
`elif [ $num -gt 10 ]`  
`then`  
    `echo "greater than 10"`  
`elif [ $num -le 10 ]`  
`then`  
    `echo "less than and equal to 10"`  
`elif [ $num -ge 10 ]`  
`then`  
    `echo "greater than and equal to 10"`  
`elif [ $num -ne 10 ]`  
`then`
    `echo "not equal"`  
    
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

##**Shell Scripting Tutorial-33:** _Run Checks on Strings_ ##

string checks:  

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

| Command | Description |
|---|---|
| `if [ $num -le 100 -a $num -ge 50 ]` | usage of AND operator |  


##**Shell Scripting Tutorial-35:** _Count the Number of Characters in User's Input in Your Script_ ##

checking the number of the character of the variable.  
`if [ 'echo $var | wc -c' -eq 2 ]`

| Command | Description |
|---|---|
| `if [ 'echo $var | wc -c' -eq 2 ]` | check if there is one character or not. 2 because of enter character. |


##**Shell Scripting Tutorial-36:** _The 'OR' Logical Operator_ ##

**-0** is the 'OR' operator for shell scripting.  
Following if statement checks the variable if it is vowel or not.  
`if [ $var  = a -o $var  = e -o $var  = i -o $var  = u -o $var  = o ]`  

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
`echo "Enter a character:\c"`  
`read var`  
  
`case $var in`  
`[a-z])`  
`    echo "You entered a lowercase character."`  
`    ;;`  
`[A-Z])`  
`    echo "You entered an uppercase character."`  
`    ;;`  
`[0-9])`  
`    echo "You entered a digit."`  
`    ;;`  
`?)`  
`    echo "You entered a special character."`  
`    ;;`  
`*)`  
`    echo "You entered more than one character."`  
`    ;;`  
`esac`  

##**Shell Scripting Tutorial-38:** _Another Date with 'case' Statement_ ##

Another example of case statement.  

`echo "Enter a word:\c"`  
`read word`  
``  
`case $word in`  
`[aeiou]* | [AEIOU]*)`  
`    echo "The words begins with a vowel."`  
`    ;;`  
`[0-9]*)`  
`    echo "The words begins with a digit."`  
`    ;;`  
`*[0-9])`  
`    echo "The words ends with a digit."`  
`    ;;`  
`???)`  
`    echo "The words is a 3-letter word."`  
`    ;;`  
`*)`  
`    echo "Something else."`  
``    ;;`  
esac`  


##**Shell Scripting Tutorial-39:** _The 'while' Loop_ ##

usage of 'while' loop.  
display the number 1 to 10.  

`count=1`  
`while [ $count -le 10 ]`  
`do`  
`    echo $count`  
    count=`expr $count + 1`  
`done`  

| Command | Description |
|---|---|
|`while [ $count -le 10 ]`| usage of while loop |
|`do`||
|`    echo $count`||
|`done`  ||


##**Shell Scripting Tutorial-40:** _The 'until' Loop_ ##

usage of until loop.  
display the numbers 1 to 10.  

`count=1`  
`until [ $count -gt 10 ]`  
`do`  
`    echo $count`  
    count=`expr $count + 1`  
`done`  

| Command | Description |
|---|---|
|`until [ $count -gt 10 ]`| usage of until loop |
|`do`||
|`    echo $count`||
|`done`  ||

##**Shell Scripting Tutorial-41:** _The 'for' Loop_ ##

usage of for loop.  
for loop is pretty different than until and while loop.  

| Command | Description |
|---|---|
|`for item in *`| usage of for loop. * means all items in current directory |
|`do`||
|`...`||
|`done`||


##**Shell Scripting Tutorial-42:** _Rant & Little Work_ ##

comparison of real number.  

another comparison for floating point numbers.  
min=12.45  
val=10.35  

if [ 1 -eq "$(echo "${val} < ${min}" | bc)" ]  
then    
    min=${val}   
fi  

echo "$min"  
  
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

| Command | Description |
|---|---|
| `IFS=:` | Internal file separator is changed |


##**Shell Scripting Tutorial-46:** _'passwd' File Revisited_ ##

Example of using passwd file, IFS, grep and set command.

`echo "Enter Username:\c"`  
`read logname`  
  
`# takes the line that is associated with the username`  
`line='grep $logname /etc/passwd'`  
  
`IFS=: # the separator is : in passwd file`  
`set $line`  
  
`echo "Username:$1"`  
`echo "User ID: $3"`  
`echo "Group ID: $4"`  
`echo "Comment Field: $5"`  
`echo "Home Folder: $6"`  
`echo "Default shell: $7"`  

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

| Command | Description |
|---|---|
| `terminal='tty'` | takes the current settings of the terminal |
| `exec < $fname` | loads the file content |
| ` while read line` | reads the line of the exec which is $fname in this case |

##**Shell Scripting Tutorial-48:** _Sleep While You are at Work_ ##

Usage of **sleep** command. Sleep makes a time delay on the execution of shell.  

| Command | Description |
|---|---|
| `sleep 5` | shell execution sleeps 5 seconds |


##**Shell Scripting Tutorial-49:** _Count the number of words & sentences in a text file without using 'wc'_ ##

An example is ran.  ##**Shell Scripting Tutorial-50:** _Fetch & Redirect Man Pages of commands using 'for loop'_ ##


| Command | Description |
|---|---|
| `man cat >> helpfile` | appends output of man command to helpfile |
| `for cmd in 'cat commandlist'` | for loop iteration of a file |


##**Shell Scripting Tutorial-51:** _Nested Loops_ ##

Example for nested loop.  

`a=1`  
`while [ $a -le 3 ]`  
`do`  
`    b=1`  
`    while [ $b -le 3 ]`  
`    do`  
`        c=1`  
`        while [ $c -le 3 ]`  
`        do`  
`            echo "$a$b$c"`  
`            c='expr $c + 1`  
`        done`  
`        b='expr $b + 1''`  
`    done`  
`    a='expr $a + 1'`  
`done`  

##**Shell Scripting Tutorial-52:** _The 'break' Statement_ ##

break terminates the loop.  

| Command | Description |
|---|---|
| `break` | ends the loop iteration |


##**Shell Scripting Tutorial-53:** _The 'continue' Statement_ ##

continue sends execution the beginning of the loop.  

| Command | Description |
|---|---|
| `continue` | returns back to start of loop |

##**Shell Scripting Tutorial-54:** _More on Metacharacters_ ##

Running more than one command a line.  
`ls ; cal ; banner "mustafa celik"`

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

login example.   

##**Shell Scripting Tutorial-57:** _Know when users log in Part Two_ ##

example of login.

| Command | Description |
|---|---|
| `grep "$logname" /etc/passwd > /dev/null` | checking the user exists or not |
| `if [ $? -eq 0 ]`||

##**Shell Scripting Tutorial-58:** _Know when users log in Final Part_ ##

loging example is implemented.  

##**Shell Scripting Tutorial-59:** _Communicate with other users using 'write'_ ##

Both users must be logged in different terminals.  

`write username`  the writer command.  
`mesg -y` the receiver command.  

`finger` shows the terminal of other users.  

| Command | Description |
|---|---|
| `write username` | message command |
| `mesg -y`| receiver command to take messages |
| `finger` | terminal list for messaging |


##**Shell Scripting Tutorial-60:** _Create Your Own Commands Using Functions_ ##

following is the function usage.  
run the following command to initialize the function:  
`$ . function_script.sh`

`youtube()`  
`{`  
	`echo "Good Morning."`  
`}`  
`byebye()`  
`{`  
	`cal`  
`}`  

use following command to release the function:  
`$ unset youtube`

| Command | Description |
|---|---|
| `unset youtube` | removes the function |


##**Shell Scripting Tutorial-61:** _Executing Multiple Scripts_ ##

Script should run at the last line of the previous script. 
