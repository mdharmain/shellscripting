#Script to print the given no. of lines.

#!/bin/bash
source function.sh
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#


if [ $1 -gt 0 ] && [ $2 -gt 0 ]
then 

add=$(($1+$2-1)) # to find last line to be printed.
echo $add
head -n $add $3 | tail -n $2  | cat


fi








cal lines.sh









#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
