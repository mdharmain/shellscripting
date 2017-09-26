#function to continue 

#!/bin/bash
source function.sh
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

# checking for arguments.
if [ $# -eq 0 ]
then
	echo "Pass the arguement"
fi

# selecting the operation.
echo "1. To convert lower to uppercase
2. To convert upper to lowercase"
read N

# Operation using translate filter command.
case $N in

1) echo $1 | tr [:lower:] [:upper:] ;;
2) echo $1 | tr [:upper:] [:lower:] ;;
*) echo invalid input
esac 

cal low.sh




#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
