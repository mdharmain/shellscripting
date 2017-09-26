#Script to display the filesystem which has required free space.

#!/bin/bash
source function.sh
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

arr=(`df --output=source`) 
arr1=(`df --output=pcent | cut -d '%' -f 1`)
echo ${arr[@]}
echo ${arr1[@]} 
echo "Enter the usage in % "
read N
count=0

for ((i=1; i<${#arr1[@]}; i++ ))
do 
	if [ ${arr1[$i]} -ge $N ]	
	then
	    count=$(($count+1))
            echo "The file system ${arr[$i]} has ${arr1[i]}% usage with free space of $((100-${arr1[$i]}))%"
	fi	
 done  

if [ $count -eq 0 ]
then
	echo "No such file system has a free space of $((100-$N))%"
fi




cal 10%space.sh


#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
