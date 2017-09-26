#Script to check whether the given file system is mounted or not. 

#!/bin/bash

#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

filesys=(`df --output=source`)
avalible=(`df --output=avail`)
useage=(`df --output=pcent`)
count=0
for ((i=0; i<${#filesys[@]}; i++ ))
do
	if [ ${filesys[$i]} == $1 ]
	then
		count=$(($count+1))
		echo "File system $1 is ${useage[i]} used with ${avalible[i]}kb free"
	fi
done

if [ $count -eq 0 ]
then
    echo "Filesystem is not matched"
fi

















#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
