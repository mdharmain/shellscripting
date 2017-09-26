#Script to find the largest and smallest usernames.

#!/bin/bash
source function.sh
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

#To take only the 1st column ie. usernames from the passwd file.
arr=(`cat ../../../../../../etc/passwd | cut -d ':' -f 1`) 


#echo ${arr[@]} 

echo "Enter the user name"
read name

for (( i=0; i<${#arr[@]}; i++ ))
do
	if [ $name == ${arr[i]} ]
	then
		var=$name
		echo "User present"
	fi
done
	if [ "$name" != "$var" ]
	then
		echo "user is not present"
	fi

cal userpresent.sh





#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
