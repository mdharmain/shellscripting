#Program to read nos. and print in ascending or descending order 

#!/bin/bash

source function.sh
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

arr=($@)     # Storing command line arguments into array.
n=$#

  # Script for Ascending order
	for (( i=0; i<$n; i++))
	do
		for (( j=$(($i+1)) ; j<$#; j++ ))
		do
	
			if [ ${arr[i]} -gt ${arr[j]} ]
			then
				t=${arr[$i]}
				arr[$i]=${arr[$j]}
				arr[$j]=$t
			fi
		done
	done

        #	echo "The Ascending order is ${arr[@]}"

  # Script for descending order
 
  arr1=()

	for (( k=$(($n-1)); k>=0; k--))
	do
		arr1+=(${arr[$k]})
	done
	#	echo "The Descending order is ${arr1[@]}"

echo "choose ascending / descendind (A/D)"
read N

if [ "$N" == "A" ]
then
	echo "The Ascended values are: ${arr[@]}"
elif [ "$N" == "D" ]
then
	echo " The Descended values are: ${arr1[@]}"
else
	echo "Invalid input"
fi 


cal assen.sh
		

#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
