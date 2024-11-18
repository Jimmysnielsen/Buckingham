#! /usr/local/bin/gawk -f
#
# usage: cat <file.csv> | ./cas_chemname.awk --csv > cas_chemname.pl
#
BEGIN {
    print ":- module(cas_data, [cas_chemname/3])."}
$1 ~ /ID/ { print "%cas_chemname(" $1 "," $2 ",\"" $6 "\")." }
$1 !~ /ID/ { print "cas_chemname(" $1 "," $2 ",\"" $6 "\")." }
END {print "%EOF"}
