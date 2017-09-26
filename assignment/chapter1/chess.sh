# Script to print chess board.
#!/bin/bash

#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#
for ((row=1; row<=8; row++))      #for printing rows
do
	rem=$(($row%2))           #To differentiate rows depending on odd and even rows.

	if [ $rem -ne 0 ]
	then  
		for ((col=1; col<=4; col++))
		do
	
			echo -e  -n "\033[47m" " " # white colour
			echo -e  -n "\033[40m" " " # Black colour
		done

	else
		for((col=1; col<=4; col++))
		do
			echo -e  -n "\033[40m" " "
			echo -e  -n "\033[47m" " "
		done
	fi
  echo " "
done
	echo -e -n "\033[0m" " "




#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
