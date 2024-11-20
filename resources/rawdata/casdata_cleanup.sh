#! bash -f
#head TSCAINV_022023.csv |\
gawk --csv '$1 ~ /ID/ {print "#" $1 "," $2 "," $6}; $1 !~ /ID/ {print $1 "," $2 ",\"" $6 "\""}'  TSCAINV_052024.csv > out_cas.csv
# mv out_cas.csv ../cas.csv
