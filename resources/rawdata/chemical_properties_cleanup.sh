#! bash -f

#1 replace empty fields ,, with an underscore ,_,.
#2 replace errors like "25,707" with 25707.
#3,4 remove some extra lines from the tail of the .csv file
sed -E ':s; s/,,/,_,/g; t s' chemical_properties.csv > out  #1
sed -i -E 's/\"([0-9]{2}),([0-9]{3})\"/\1\2/' out           #2
sed -i -E '/^,_,/d' out                                     #3
sed -i -E '/^20,_/d' out                                    #4

mv out ../chemical_properties.csv
