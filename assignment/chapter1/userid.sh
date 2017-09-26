#script to find user id in range.

#!/bin/bash
source function.sh 
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

arruser=(`cat /etc/passwd | cut -d ':' -f 1`)
arrid=(`cat /etc/passwd | cut -d ':' -f 3`)

count=0

function user()
{

	for (( i=0; i<${#arrid[@]}; i++ ))
	do
		if [ ${arrid[$i]} -ge $1 -a  ${arrid[$i]} -le $2 ]
		then
			var=${arruser[$i]}
			echo ${arrid[i]}- $var
			count=$(($count+1))
		fi
	done

		echo "The no.of user ids between 500 and 10000 are: $count"

}


if [ $# -eq 0 ]
then
	user 500 10000
elif [ $# -eq  2 ]
then
	user $1 $2
else
	echo "Enter valid arguments"
fi


cal userid.sh 














#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
