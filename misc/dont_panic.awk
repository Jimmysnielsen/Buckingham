#! /usr/local/bin/gawk -f
BEGIN {print "Don't Panic!"}
# the command BEGIN is executed before any files are read and interpreted.
#
# tips for CL awk programs:
# 1. setting the field separator FS to the null string "" use
# awk -F "" 'program' files #correct
# awk -F"" 'program' files #wrong! this is because concatenating -F and "" results in only '-F' and 'program' is being interpreted as the field separator and the first filename as the program.
#
#2.
#
#
#some simple examples in CL mode
# 1. search for 'li' in the mail list and print the full line
# awk '/li/ {print $0}' mail-list
#
# 2. find "WATER" in the chemical data table <filename>
# cat <filename> | gawk --csv '/WATER/ {print $0}'
#
# some CL tricks using a file named 'data'
#
# 3. print every line that is longer than 80 characters. default action is 'print $0' so this is not necessary !
# gawk 'length($0) > 80 {print $0}' data
# gawk 'length($0) > 80' data
#
# 4. print the lenght of the longest input line
# gawk --csv '{if (length($0) > max) max = length($0) } END {print max } <filename>'
#
# 5. print every line that has at least one field. THIS IS AN EASY WAY TO REMOVE BLANK LINES FROM A FILE by creating a new file.
# gawk --csv 'NF > 0' <filename>
#
# 6. print seven random numbers from 0 to 100, inclusive:
 # NOTE: GENERATION RESTARTS EVERY TIME SO RUNNING IT TWICE GENERATES THE SAME NUMBERS.
# gawk 'BEGIN {for (i=1;i<=7; i++) print int(101*rand())}'
#
# 7. print the total number of bytes used by files:
# this works because $5 in 'ls -l' is the length in bytes
# ls -l <files> | gawk '{x += $5} END {print "total bytes: " x}'
#
# 8. print the total number of kilobytes used by <files>:
#  ls -l <files> | gawk '{x += $5} END {print "total bytes: " x/1024}'
#
# 9. print a sorted list of the login names of all users: -F sets til field delimiter
# gawk -F":" '{ print $1}' /etc/passwd | sort
#
# 10. count the lines in a file. NR is the number of RECORDS in <filename>
# gawk 'END {print NR}' <filename>
