#!/bin/bash

# tar - an archiving utility

# mkdirectory, place some dummy files
mkdir catvideos
touch catvideos/cat1.mp4
touch catvideos/cat2.mp4
touch catvideos/cat3.mp4


# creating archive and listing files within the archive
tar -cvf catvideos.tar catvideos # creating archive
tar -tvf catvideos.tar # listing all files within the archive (tar)

# create restore dir to extract files from the archive
mkdir restore
cd restore/ 
tar -xvf ../catvideos.tar  # extracting tar archive file (../catvideos.tar) into current directory

cd ..
# compress archive into gz file
gzip catvideos.tar # converts the existing tar archive file into tar.gz file the tar file is gone & compressed into tar.gz file

gunzip catvideos.tar.gz # unzip the tar.gz file into tar file (tar file is back again tar.gz is gone)



tar -cvzf catvideos.tar.gz catvideos # creates tar.gz file from catvideos
tar -tvzf catvideos.tar.gz # lists all containing of tar.gz
tar -xvzf catvideos.tar.gz # extracts tar.gz file 