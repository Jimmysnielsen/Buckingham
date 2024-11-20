#! /usr/local/bin/gawk -f
# usage 1: cat <filename> | ./chemical_parameters.awk --csv > chem_parameters.pl
# usage 2: cat <filename> | ./chemical_parameters.awk > chem_parameters.pl
#
BEGIN {
    fp[0] = "([^,]+)|(\"[^\"]+\")"
    fp[1] = "([^,]*)|(\"[^\"]+\")"
    fp[2] = "([^,]*)|(\"([^\"]|\"\")+\")"
    FPAT =  fp[1] # this is similar to using --csv on CL
    print ":- module(chemical_parameters, [chem_parameters/26])."}
$1 ~ /NO/ { print "%chem_parameters(" $0 ")."}
$1 !~ /NO/ { print "chem_parameters("\
        $1 ",\"" $2 "\",\"" $3 "\"," $4 "," $5 "," $6 "," $7 "," $8 "," $9 "," $10 "," $11 "," $12 "," $13 "," $14 "," $15 "," $16 "," $17 "," $ "," $18 "," $19 "," $20 "," $21 "," $22 "," $23 "," $24 "," $25 "," $27 ")."}
END {print "%EOF"}


# file format: NO,FORMULA,COMPOUNDNAME,MOLWT,TFP,TBP,TC,PC,VC,LDEN,TDEN,HVAP,VISA,VISB,DELHF,DELGF,CPVAPA,CPVAPB,CPVAPC,CPVAPD,ANTA,ANTB,ANTC,TMN,TMX,,title
