#Program to read n and generate pattern1

#!/bin/bash

source function.sh
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#



#  N is the number of rows to be printed.
echo "enter N"

read N

for ((row=1; row<=N; row++))
do

	for((col=1; col<=row; col++))
	do
		echo -n  $col
	done

                echo " "

done

cal pattern1.sh



#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
