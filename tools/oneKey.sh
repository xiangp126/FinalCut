#!/bin/bash
# each line no more than 50 char
file=go.txt
if [[ "$1" != "" ]]; then
    file=$1
fi
# del empty line
sed -i '/^$/d' $file
# del start space
sed -i 's/^[ \t]*//' $file
# del trailing space
sed -i 's/[ \t]*$//' $file
# del start and trailing comma etc
sed -i 's/^[，。；,.;]//g' $file
sed -i 's/[，。；,.;]$//g' $file
# replace all period and comma to space
sed -i 's/[。，、]/ /g' $file
# del pos mark
sed -i 's/【.*】//g' $file
sed -i 's/[.*]//g' $file
