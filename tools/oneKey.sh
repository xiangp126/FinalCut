#!/bin/bash
# each line no more than 50 char

file=go.txt
if [[ "$2" != "" ]]; then
    file=$2
fi

pringUsage() {
    exeName=${0##*/}
    cat << _EOF
[NAME]
    $exeName -- a tiny tool for lazy man using FinalCut Pro

[SYNOPSIS]
    sh $exeName [help | arctime | notes]

[EXAMPLE]
    sh $exeName
    sh $exeName notes
    sh $exeName help

[DESCRIPTION]
    help  -- print the help messages
    notes -- add extra blank lines between each lines
    arctime -- adjust format to fit its use in arctime

_EOF
}

forArcTime() {
    # del the empty line
    sed -i '' '/^$/d' $file
    # del the line marked with 说
    sed -i '' '/^说$/d' $file
    sed -i '' '/^读$/d' $file
    # del the start space/TAB
    sed -i '' 's/^[ \t]*//' $file
    # del the trailing space
    sed -i '' 's/[ \t]*$//' $file
    # del the start and trailing commai/etc
    sed -i '' 's/^[，。；,.;]//g' $file
    sed -i '' 's/[，。；,.;]$//g' $file
    # replace all the period and comma with space
    sed -i '' 's/[。，、]/ /g' $file
    # del the pos mark. Process the first match, not the greedy match.
    # refer https://www.cnblogs.com/shenyoo/p/14918429.html
    sed -i '' 's/【[^】]*】//g' $file
    sed -i '' 's/\[[^]]*\]//g' $file
    sed -i '' 's/「[^」]*」//g' $file
    sed -i '' 's/（说）//g' $file
    sed -i '' 's/（读）//g' $file

}

forNetEase() {
    # del empty line
    sed -i '' '/^$/d' $file
    # del start space
    sed -i '' 's/^[ \t]*//' $file
    # del trailing space
    sed -i '' 's/[ \t]*$//' $file
    # del start and trailing comma etc
    sed -i '' 's/^[，。；,.;]//g' $file
    sed -i '' 's/[，。；,.;]$//g' $file
    # replace all period and comma with space
    sed -i '' 's/[。，、]/ /g' $file
    # del pos mark
    sed -i '' 's/【.*】//g' $file
    sed -i '' 's/[.*]//g' $file
}

addExtraLinesBetEachLine() {
    # Solu 1: sed command
    # sed -i '' 's/\n\@<!\n\n\@!/\r\r/g' $file

    # Solu 2: vim command
    vim $file +"%s/\n\@<!\n\n\@!/\r\r/g" +"w" +"qa"
}

case $1 in
    'usage' | 'help')
        pringUsage
        ;;

    'arctime' | *)
        forArcTime
        exit
        ;;

    'notes')
        set -x
        addExtraLinesBetEachLine
        ;;

    'netease')
        forArcTime
        exit
esac

# Troubleshooting on Mac OX
# sed -i 's/megatron/pony/g' /path/to/file.txt
# sed: 1: "/path/to/file.txt": extra characters at the end of l command

# Solution: Unlike Ubuntu, OS X requires the extension to be explicitly
# specified. The workaround is to set an empty string:-, you should use
# sed -i '' 's/megatron/pony/g' /path/to/file.txt
