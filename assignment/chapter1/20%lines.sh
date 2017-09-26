#Script to replace 20% lines in a files randomly. 

#!/bin/bash
source function.sh
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

#Total no. of lines in file.
lcount=`cat $1 | wc -l `
echo "The total no. of lines in file: $lcount"

#20% of lines from file.
per=`echo "$lcount*20/100"|bc`
echo "20% lines of the given file are: $per"

#Generating random numbers ang storing in an array.
arr=(`shuf -i 1-$lcount -n $per`)
echo ${arr[@]}


#Loop for replacing the line with given pattern using sed command.
for (( i=0; i<$per; i++ ))
do
 
	sed -i  "${arr[$i]}s/.*/<------DEL----->/" $1
done

cal 20%lines.sh


#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
