#! /usr/local/bin/gawk -f
# usage 1: cat <filename> | ./chem_parameters.awk --csv > chem_parameters.pl
# usage 2: cat <filename> | ./chem_parameters.awk > chem_parameters.pl
#
BEGIN {
    fp[0] = "([^,]+)|(\"[^\"]+\")"
    fp[1] = "([^,]*)|(\"[^\"]+\")"
    fp[2] = "([^,]*)|(\"([^\"]|\"\")+\")"
    FPAT =  fp[1] # this is similar to using --csv on CL
    print ":- module(chemical_parameters, [chem_parameters/27])."}
$1 ~ /NO/ { print "%chem_parameters(" $0 ")."}
$1 !~ /NO/ { print "chem_parameters(" $0 ")."}
END {print "%EOF"}


# file format: NO,FORMULA,COMPOUND NAME,MOLWT,TFP,TBP,TC,PC,VC,LDEN,TDEN,HVAP,VISA,VISB,DELHF,DELGF,CPVAPA,CPVAPB,CPVAPC,CPVAPD,ANTA,ANTB,ANTC,TMN,TMX,,title
