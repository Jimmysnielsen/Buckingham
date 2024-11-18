#! zsh
sed -E "s/\"([0-9]{2}),([0-9]{3})\"/\1\2/" chemical_parameters.csv > output.csv
