#! /usr/bin/awk -f
BEGIN {print "Don't Panic!"}
# the command BEGIN is executed before any files are read and interpreted.
#
# tips for CL awk programs:
# 1. setting the field separator FS to the null string "" use
# awk -F "" 'program' files #correct
# awk -F"" 'program' files #wrong! this is because concatenating -F and "" results in only '-F' and 'program' is being interpreted as the field separator and the first filename as the program.
#
#2.
