#Program to find the largest no. 

#!/bin/bash

source func.sh

#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

# Storing the command line arguments into array.
arr=("$@")


if [ "$#" -ge 0 ]
then
       
	lar=${arr[0]}           # Storing 1st element of an array as largest no. 
		
	
		for ((i=1; i<=$#; i++))
		do
			if [[ "${arr[i]}" -ge "$lar" ]]
			then
				lar=${arr[i]}
			else
				lar=$lar
			fi
		done

	echo "Largest value is $lar"

else
	echo "Invalid input"
fi 


cal largest.sh


#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
