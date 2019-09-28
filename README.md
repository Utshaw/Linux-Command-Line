# Linux-Command-Line
## Bash Shell Scripting

### Shell
Shell is a program that is capable of understanding shell commands. Bash shell is one of the most propular shell programs. 

### Terminal
Terminal is just an interface between the shell program and command. This is where we write commands.

### Commands
Command are text that are written in the terminal.

### Basics
- 0 = standard input; 1 = standard output; 2 = standard error <br />
- redirection of standard output breaks the pipleline <br />
- `tee` command helps continue flowing the output whereas output redirection halts the output upto that stage <br />
- pipe `|` is used for connecting starndard output of one command to standard input of anohter command
- all command doesn't accept standard input, they only accept command line arguments, `xargs` are used in these cases


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
 


## Resources
man page: https://www.youtube.com/watch?v=uJnrh9hAQR0
