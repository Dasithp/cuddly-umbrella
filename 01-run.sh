#!/bin/bash
#SUP-she said to make changes to this line 
#Im in charge
#You wish! Only Kathleen is in charge ^.^ and my smiley face stays
#Nothing
#HI

#Please maximize the window to be able to read all my comments

#If condition stating that if the number of entered parameters/arguments that are supplied to the script is equal to 0, then
if [ $# -eq 0 ]; then
#Print the message "Usage: the current script, followed by filename". This is an error message that shows how you should enter the command     
echo "Usage: $0 filename"
#exit code indicating that the command was unsuccessful
exit 1

#if the command was unsuccessful run script only upto fi
fi

#Defining the first positional argument as filename
filename=$1

#print in one line the result of this command and the one trailing this (avoid printing in new line), "The number of genes in 'name of file in first positional argument' is" 
echo -n "The number of genes in $filename is "

#concatenate/open the file and search for lines that dont start with '#', select only the third column, search for lines containing the word gene in that column and count (and print) the number of lines containing the word 'gene'  
cat $filename |
grep -v '^#' |
cut -f3 |
grep gene |
wc -l
#trial

#This is the end
