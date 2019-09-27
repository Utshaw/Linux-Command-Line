# Linux-Command-Line

### Shell
Shell is a program that is capable of understanding shell commands. Bash shell is one of the most propular shell programs. 

### Terminal
Terminal is just an interface between the shell program and command. This is where we write commands.

### Commands
Command are text that are written in the terminal.

### Basics
0 = standard input; 1 = standard output; 2 = standard error


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

`cat 0< input.txt` 1> output.txt # redirects standard input; reads from the input.txt and pipes them into output.txt






## Resources
man page: https://www.youtube.com/watch?v=uJnrh9hAQR0
