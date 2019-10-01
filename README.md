# Linux-Command-Line
## Bash Shell Command \& Scripting

### Shell
Shell is a program that is capable of understanding shell commands. Bash shell is one of the most propular shell programs. 

### Terminal
Terminal is just a graphical interface between the shell program and command. This is where we write commands.

### Commands
Command are instruction that are written in the terminal and submitted to the shell for interpretation.

### GNU Project (http://www.gnu.org/)
- Free software is open source but not all open source is free software 
- Richard Stallman began development of GNU operating system in 1983
- The freedom is provided by GNU public license (GPL)
- In 1991 Linus Torvalds created the Linux Kernel and published it under GPL v2.0

### Installing free software (for example: coreutils)
- `wget https://ftp.gnu.org/gnu/coreutils/coreutils-8.28.tar.xz` 
- `tar -xvJf coreutils-8.28.tar.xz`
- `cd coreutils-8.28/` 
- `bash configure` # create Makefile
- `make`


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
- `directory/*` means everything inside the directory but not itself
- `directory/` means directory itself + everything inside the directory 

### nano text editor
^ symbol = ctrl <br />
M\- symbol = alt <br />
Nano configuration file location: /etc/nanorc

### bash script file
- Note: bash scripts can be used for scheduling
1. name the file as script.sh
2. the first line will be #!/bin/bash (Shebang line)
3. chmod +x script.sh
4. In order to run the script from anywhere we need to add the path to $PATH environment variable
5. In the end of the ~/.bashrc file add this line: `PATH="$PATH:$HOME/bin"`
6. The above line will cause all of the files in `$HOME/bin` location to be avialable from terminal 

### scheduling scripts
#### cron
cron \- daemon to execute scheduled commands (Vixie Cron) <br />
Each user gets a cron tab that lists which commands or scripts will be automatically run by the user <br />
1. `crontab -e` # edit crontab of current user <br />
2. format: `m h  dom mon dow   command` <br />
<minute[0-59]> <br /> <hour[0-23]> <br /> <day_of_the_month[1-31]> <br /> <month[[1-12][JAN-DEC]]> <br /> <day_of_the_week[[0-6][SUN-SAT]]>  <br />

   `20 11 * * * <command>` means it will run at 11:20AM every day,month, year <br />
   `20 11  10 JUN SUN <command>` this command will run at 11:20AM of JUN only if 10th JUN is Sunday  <br />
   \*  \* means any minute any day <br /> 
   `* *  * * * <command>` # the command will run every minute every hour  <br />
   `0,15,30,45  * * * * echo "Hello23"` # evry 15 minutes run this command <br />
   `*/15  \* \3 \* \* echo "Hello23"` # evry 3 days every 15 minutes run this command <br />
   `59 23 * JAN,DEC * echo Hello`  # run the command only on JAN and DEC each day at 23:59 <br />
**Note: adding to environment variable $PATH won't let cron command know the command. **    <br />

   `59 23 * * FRI bash ~/bin/script`  # run the script file named  /home/<user_name>/script <br />
  

 


### aliases
- Note: aliases can't be used for scheduling
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
- `mkdir {jan, feb, mar, apr, may}_{2019,2020}` # creates 5\*2 directories 

### Archiving file
1. Make tarball from the files using `tar` command
2. Compress tarball using `gzip` or `bzip2` 


## Commands

#### tty
command to show current terminal file location

#### grep
grep  searches  for  PATTERN  in each FILE. <br />
grep returns lines that contain a piece of text wildcards also works <br />
grep [OPTIONS] PATTERN [FILE...] <br />
options: <br />
- \-C NUM, \-NUM, \-\-context=NUM Print NUM lines of output context. 
- \-v, \-\-invert-match Invert the sense of matching, to select non-matching lines. 
- \-i, \-\-ignore-case Ignore case distinctions, so that characters that differ  only  in  case  match  each other.
<br />

grep command is canse\-sensitive <br />

`grep e hello.txt` # outputs the line(s) containing letter e in hello.txt <br />
`grep you -c gadsby.txt` # outputs number of references of word 'you' in gadsby.txt file <br />
`grep -i gadsby gadsby.txt`  # case insensitive search <br />
`grep -i "our boys" gadsby.txt` # sentence search <br />
`grep -vi e gadsby.txt` # outputs those lines without the letter e  <br />
`grep -ic "e" hello.txt  gadsby.txt` # multiple file search <br />

 

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

`cat file1.txt file2.txt file3.txt > compile.txt` # concatenating all of the outputs and puts them into compile.txt <br/>
`cat file[1-3]txt > compile.txt` # concatenating all of the outputs and puts them into compile.txt <br/>


#### tac
tac - concatenate and print files in reverse <br/>
`tac file.txt` # outputs the lines of the file in reverse order. the last line will be first. the first line will be last horizontally same vertically reversed <br />

#### rev
rev - reverse lines characterwise <br />
`rev file.txt` # vertically same horizontally reversed each line  <br />

#### less
less - opposite of more <br />

#### head
head - output the first part of files <br />
by default shows the first ten lines <br />
`head -n 5 file.txt` # outputs first 5 lines of file.txt <br />
`find . | head -n 2` # outputs only first 2  results <br />

#### tail
tail - output the last part of files <br />




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

#### rm 
remove files or directories <br />
`rm -r delFolder` # deletes delFolder <br />
`rm -r delFolder/del{1,2,3}` # # deletes del,1 del2, del3 folders <br />
`rm -r delFolder/` #  deletes delFolder and everything inside of it <br />
`rm -r delFolder/*` #  deletes  everything inside delFolder but not itself <br />
`rm -ri delFolder/` # interactive deletion: asks before deletion of each file or folder <br />
`rm delFile` # deletes delFile


#### rmdir
rmdir - remove empty directories <br />
`rmdir delFolder` # removes delFolder only if it is empty

#### mkdir
mkdir - make directories <br />
`mkdir -p aFolder/bFolder/cFile` # creates the full path along the way of creating folders and files <br />

#### touch
touch - change file timestamps <br />
generally used to create empty file[s]

`touch aFolder/file{1,2,3}.txt` # creates three empty files inside aFolder

#### cp
cp - copy files and directories <br />
cp [OPTION]... [-T] SOURCE DEST <br />
cp [OPTION]... SOURCE... DIRECTORY <br />
`cp file1.txt file2.txt` # file1 is source file2 is destination <br />
`cp file1.txt file2.txt directory/` # file1 , file2 are sources directory is destination directory <br />
`cp directory/* .` # copy everything from directory to current folder <br />
`cp -r sourceDir/* destDir` # copy everything from sourceDir to destDir <br />

#### sort
sort - sort lines of text files <br />
oprtions: <br />
- \-n, \-\-numeric\-sort compare according to string numerical value 
- \-M, \-\-month\-sort 
- \-r, \-\-reverse reverse the result of comparisons
- \-h, \-\-human-numeric-sort compare human readable numbers (e.g., 2K 1G)

**Note: -M and -n options can't be used together**

`sort file.txt` # sorts the content of file.txt alphabetically <br />
`sort -r file.txt` # sorts the content of file.txt in reverse alphabetical way <br />
`sort -n numbers.txt` # sort based on value of the numbers <br />
`sort -u numbers.txt` # sort and outputs only unique <br />
`ls -l | head -n 20 | sort -k 5 -n ` # sorts files based on size  <br />
`ls -lh | head -n 20 | sort -k 5  -hr` # human readable format sort
`ls -lh /etc | head -n 20 | sort -k 6 -M` # sort by month


#### mv 
mv - move (rename) files <br />
`mv oldName.txt newName.txt` # renames to newName.txt <br />
`mv oldFolder newFolder` # renames to newFolder <br />
`mv directory/* .` #moves everything from directory folder to current directory <br />

#### locate 
locate - find files by name <br />
locate command uses a database which gets updated once a day. this can show outdated result <br />
in order to update the database use: `sudo updatedb`  <br />
options: -e: Print only entries that refer to files existing at the time locate is run. <br />
`locate utshaw` # searches for file or directories with case sensitive name utshaw in their path <br />
`locate -i uTsHaW` # searches for file or directories with case insensitive name utshaw in their path <br />
`locate  -c uTsHaW` # count the number of occurrences of utshaw found <br />
`locate -e utshaw` # outputs actually existing file <br />
`sudo updatedb` # updates the database `locate` command uses for searching <br />
`locate --existing --follow utshaw` # checks if the file really exists and omit broken symbolic links <br />

#### find
find - search for files in a directory hierarchy <br />
`find` command doesn't require database to operate it's always upto date <br />
`locate` only outputs files whereas `find` outputs files and folders <br />
`find` # outputs every files and directories from the current directory tree recursively <br />
`find . -maxdepth 1` # det maximum depth for search <br />
`find . -type f` # outputs only files <br />
`find . -type d` # outputs only directories <br /> 
`find -type f -size +100k` # outputs files with size > 100k <br />
`find -type f -size -100k` # outputs files with size < 100k  <br />
`find -type f -size +100k -size -5M` # outputs files with size > 100k \& <5M <br />
`sudo  find -maxdepth 3  -type f  -size +10k -size -12k -exec cp {} ~/Desktop/test/ \;` # copies each of those files to test folder <br />
`find -type f -name "test.txt"` #  case-sensitive searches for test.txt from current directory tree  <br />
`find -type f -name "test*"` #  case-sensitive searches for files starting with test from current directory tree  <br />
`find -type f -iname "test*"` #  case-insensitive searches for files starting with test from current directory tree  <br />
`find -type f -name "*.py"` # finds all files with extension py <br />
`find -type f -mmin -10` # finds all files those were modified less than ten minutes ago <br />
`find -type f -mmin +1 -mmin -10` # finds all files those were modified greater than one minute ago and less than ten minutes ago <br />

#### tar
tar - an archiving utility <br />
options: <br />
- \-c, \-\-create Create  a  new  archive. 
- \-v, \-\-verbose Verbosely list files processed.
- \-f lets tar command accept files
- \-t List  the  contents of an archive. 
`tar -cvf ourArchive.tar file[1-3].txt` # create a new archive named ourArchive.tar <br />
`tar -tf ourArchive.tar ` # outputs contents of ourArchive.tar <br />
`tar -xvf ourArchice.tar` # extracts ourArchive.tar <br />
`tar -cvzf ourArchive.tar.gz diary.txt utshaw.txt diary.txt` # create gzip file in one command <br />
 `tar -cvjf ourArchive.tar.bz2 diary.txt utshaw.txt diary.txt` # create bz2 file in one command <br />
 `tar -xvzf ourArchive.tar.gz` # unzips from gz file <br />
 `tar -xvjf ourArchive.tar.bz2` # unzips from bz2 file <br />
 `tar -xvJf ourArchive.tar.xz`  # extract from tar.xz file <br />
 
 
#### gzip
gzip is faster but with less compression power means file size won't be that small <br />
`gzip ourArchive.tar` # compress the tar file with gz extension <br />
`gunzip ourArchive.tar` # un-compress the gz file and give back tar file<br />


#### bzip2
bzip2 is slower but has higher compression power can compress to very small files <br />
`bzip2 ourArchice.tar` # compress the tar file with .bz2 extension <br />
`bunzip2 ourArchice.tar.bz2` # un-comress the bz2 file and gives back tar file <br />


#### zip
zip \- package and compress (archive) files <br />
`zip ourZip.zip file1.txt file2.txt ` # creates zip file named ourZip.zip from file1.txt and file2.txt <br />



#### wc
wc - print newline, word, and byte counts for each file <br />
`wc -l`  # outputs number of lines the command received in the standard input <br />




## Resources
- man page: https://www.youtube.com/watch?v=uJnrh9hAQR0  
- crontab: https://crontab.guru/
