#Program to add 2 real numbers

#!/bin/bash

source function.sh

#--------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE--------------------------------------------------#

echo "Enter 1st no."

read N1

echo "Enter 2nd no."

read N2

if [ "$N1" -ge "0" ] && [ "$N"2 -ge "0" ]

then
        
	SUM=`echo "$N1+$N2"|bc`            # bc command for floating numbers.

	echo "The sum of real nos. $N1+$N2=$SUM"

else
 	
	echo "Invalid input"

fi

cal addre.sh

#---------------------------------------------------------END OF CODE-----------------------------------------------------#
#-------------------------------------------------------------------------------------------------------------------------# 
