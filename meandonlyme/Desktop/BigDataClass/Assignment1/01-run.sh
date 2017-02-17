#This is the number of genes in yeast.

#Geez kdtran27 this is not the place for an essay

#!/bin/bash  				
# The script should be run with bash, rather than another shell

if [ $# -eq 0 ]; then				
# An if statement checks for the conditions specified within the brackets ([]) and the brackets ([]) is a test utility that evaluates the expression within it
# The condition inside the bracket is asking if the number of arguments equals 0
# In this situation the number of arguments is the number of files provided by the individual which is 1, the saccharomyces file
	echo "Usage: $0 filename"   
# So if the number of files is equal to 0, then given the output of the echo command, read the server
# In this situation, the number of arguments is not equal to 0, so the echo command would not be printed to the terminal
	exit 1
# This is the exit status to end the application. Because the exit status has a numeric value of 1, this means the program "failed"
# The "failed" refers to the condition inside the bracket was not a successful outcome and so the exit strategy is not successful, equal to 0, rather instead a non-zero integer  
fi
# This closes the if statement
# The next few conditions are not stated within the brackets so will be executed no matter what 

filename=$1
# $ represents a variable. Because the filename is equal to the number of arguments which is the number of files present, it would print out the one file present which is the saccharomyces file

echo -n "The number of genes in $filename is "
# The echo command should be read to the server but the -n stops the echo from breaking line
# Where $filename is, because filename is equal to the variable which is the number of arguements which is the number of files present, it will print out saccharomyces_cerevisiae.giff in its place

cat $filename |
# cat is a utility that reads files sequentially, so read the file provided by the individual, in this case, the saccharomyces file
	grep -v '^#' |
# grep searches the target file for occurrences of pattern but because the -v option is present, it actually filters out matches and selects lines that are not matching any of the specified patterns
# So in this particular case, select all lines that do not begin with # because ^ means the start of line and # is the literal character # 
	cut -f3 |
# cut is to cut out selected portions of each line of a file
# -f option specifies a field list, so in this particular case, cut only the third field of each line because an integer, 3, was specified after the -f option, so every third field
	grep gene |
# grep again looks for patterns so in the file, look for anything matched with the word gene
	wc -l
# wc is a word, line, character or byte count but here it will be a line count, with the -l option present, its the line count in the file 
# | is the pipe character, it takes the output of the command on first line, in this case, starting with cat $filename and uses it as the input of the command on the next line

