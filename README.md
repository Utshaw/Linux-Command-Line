# Linux-Command-Line
## Bash Shell Scripting

### Shell
Shell is a program that is capable of understanding shell commands. Bash shell is one of the most propular shell programs. 

### Terminal
Terminal is just a graphical interface between the shell program and command. This is where we write commands.

### Commands
Command are instruction that are written in the terminal and submitted to the shell for interpretation.

### Basics
- 0 = standard input; 1 = standard output; 2 = standard error <br />
- redirection of standard output breaks the pipleline <br />
- `tee` command helps continue flowing the output whereas output redirection halts the output upto that stage <br />
- pipe `|` is used for connecting starndard output of one command to standard input of anohter command
- all command doesn't accept standard input, they only accept command line arguments, `xargs` are used in these cases
- `~` is home directory for current user i.e /home/utshaw
- directories or files starting with dot `.` are hidden files
- single dot `.` is current directory
- double dot `..` is previous directory
- press double tab to show all completion possible with current amount of text
- file extension doesn't matter in linux unlike windows
- In order to determine the file type linux reads piece of code inside the top of each file known as header

### aliases
aliases are mainly used as shorter form of the original longer command
steps:
- create a `.bash_aliases` file in home 
- alias aliasName="<long_command>" i.e `alias getPythonVersion="python --version"`
- save the file
- restart terminal
- enter aliasName i.e `getPythonVersion`

### wildcards
- `*` means abything i.e `*.txt` matches any file with `.txt` extension
- `?`  means any character occuring once i.e `?,txt` means any file named 'A.txt' or 'B.txt'
- `[]` means choose any one from inside of the square (must choose exactly one) `file[123].txt` matches `file1.txt` , `file2.txt`, `file3.txt` but doesn't select `file12.txt` or `file.txt`

### brace expansion
- `echo {1..10}` outputs `1 2 3 4 5 6 7 8 9 10`
- `echo {A,B,C}-{1,2,3}` outputs `A-1 A-2 A-3 B-1 B-2 B-3 C-1 C-2 C-3`


## Commands

#### tty
command to show current terminal file location



#### man
search for specific keyword: `man -k "your keyword here"` 

`man -k "list directory contents"`

Output:

`dir (1)              - list directory contents`

`ls (1)               - list directory contents`

`ntfsls (8)           - list directory contents on an NTFS filesystem`

`vdir (1)             - list directory contents`


#### cat
reads from standard input and writes into standaed output

standard output redirection: 

`cat 1> output.txt` # redirects standard output; cleans the taget file and writes into it

`cat > output.txt` # redirects standard output; cleans the taget file and writes into it

`cat >> output.txt` # redirects standard output; appends into the target file

standard input redirection: 

`cat 0< input.txt` # redirects standard input; reads from the input.txt and loads them into cat program

`cat < input.txt` # redirects standard input; reads from the input.txt and loads them into cat program

`cat 0< input.txt 1> output.txt` # redirects standard input; reads from the input.txt and redirects them into output.txt

`cat 0< input.txt > /dev/pts/3` # redirects std input and std output; reads from input.txt and sends them to another terminal


#### cut
remove sections from each line of files

example:

`date | cut -d " " -f 1 | cat > date.txt` # pipes from date to cut then get the first field based on space delimiter and then pipes to date.txt


#### tee 
read from standard input and write to standard output and files

example:

`date | tee fulldate.txt | cut -d " " -f 1` # two pipes from date one gets the output to be written to fulldate.txt , the other goes to cut command
 
#### xargs
build and execute command lines from standard input

example: echo doesn't support standard input only supports command line argument

`date | xargs echo` # prints the date in standard output
`cat fileToDelete.txt | xargs rm` # delete file with filename written in fileToDelete.txt

#### file
determine file type <br />
file [file_name] <br />
Example: <br />
`file .bash_aliases` <br />
Output: <br />
.bash_aliases: ASCII text


## Resources
man page: https://www.youtube.com/watch?v=uJnrh9hAQR0
