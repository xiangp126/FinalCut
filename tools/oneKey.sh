#!/bin/bash
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
# replace all full stop to comma
sed -i 's/[。，]/ /g' $file
# del pos mark
sed -i 's/【.*】//g' $file
sed -i 's/[.*]//g' $file
