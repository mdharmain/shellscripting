#Script to find the largest and smallest usernames.

#!/bin/bash

#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

#To take only the 1st column ie. usernames from the passwd file.
arr=(`cat ../../../../../../etc/passwd | cut -d ':' -f 1`) 

n=${#arr[@]}
echo " "
echo ${arr[@]}
echo " "
echo "Number of usernames: $n"


#To sort array in Ascending order depending on string length
for (( i=0; i<$n; i++ ))
do
                  for (( j=$(($i+1)) ; j<$n; j++ ))
                  do
                          
                          if [ ${#arr[i]} -gt  ${#arr[j]} ]
                          then
                                 t=${arr[$i]}
                                  arr[$i]=${arr[$j]}
                                 arr[$j]=$t
				
                          fi
                  done
done


#printing the results.
echo " "
echo "${arr[@]}"
echo " "
echo "The largest username is: ${arr[$n-1]}"
echo "The smallest username is: ${arr[0]}"








#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
