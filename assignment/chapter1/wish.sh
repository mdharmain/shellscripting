#function to continue 

#!/bin/bash

#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#


store=`date +%H`

if [ $store -ge 9 ] && [ $store -le 13 ]
then 
	echo "Good Morning Harmain, Have a nice day!
This is `date`"
elif [ $store -ge 14 ] && [ $store -lt 17 ]
then
	echo "Good Afternoon Harmain, Have a nice day!
This is `date`"
elif [ $store -ge 17 ] && [ $store -lt 21 ]
then 
	echo "Good Evening Harmain, Have a nice day!
This is `date`"
else
	echo "Good Night Harmain, Have a nice day!
This is `date`"
fi 


















#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
