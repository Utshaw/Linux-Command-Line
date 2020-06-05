#!/bin/bash
cut -c10 /etc/passwd #  10th charater of each line
cut -c 1,3,5 /etc/passwd #  1st, 3rd, 5th charaters of each line
cut -c 4- /etc/passwd  # from 4th character to rest
cut -c 1-10 /etc/passwd # first 10 characters of each line
echo "one\ttwo\tthree" | cut -f 1 # cuts the first item before \t default delimiter='\t'
echo "one,two,three" | cut -d ',' -f 3 # delimiter=',' based on that cuts the 3rd field
echo "one\two\three" | cut -d '\' -f 2 # delimiter='\' 
cat /etc/passwd | cut -d ':' -f 1
cat /etc/passwd | cut -d ':' -f 1,3 # prints all user & userid delimiter=':' output delimitted by original delimiter
cat /etc/passwd|cut  -d ':' -f 1,3 --output-delimiter=',' #prints all user & userid . output delimited by ','
echo "first,last" > people.csv
echo "Farhan,Utshaw" >> people.csv
echo "Tanvir,Utshaw" >> people.csv
echo "Farhan,Tanvir" >> people.csv
grep -v "^first,last$" people.csv | cut -d "," -f 2 # those lines not starting with first not ending with last -v=not matched by the patterns
awk -F ':' '{print $1 ",              " $3}' /etc/passwd # output delimited by comma followed by lots of whitespaces
awk -F ':' '{print "COL1: " $1 "   COL2: " $2}' /etc/passwd
awk -F ':' '{print "UID: " $3 ";LOGIN: " $1}' /etc/passwd
awk -F ':' '{print $NF}' /etc/passwd # prints the last field
awk -F ':' '{print $(NF - 1)}' /etc/passwd # prints the second last field
echo 'L1C1    L2C2' > lines
echo '  L2C1 L2C2  '>> lines
echo ' L3C1 L3C2  '>> lines
echo -e 'L4C\tL4C2  '>> lines
awk '{print $1, $2}' lines # handles the scenario

