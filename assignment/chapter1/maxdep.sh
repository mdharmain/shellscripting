#directories file 

#!/bin/bash
source function.sh
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#



if [ $# -eq 0 ]
then
   find . -maxdepth 1

else 
for (( i=1; i<=$# ; i++ ))
do
	eval var=\$$i
	find $var  -maxdepth 1 | rev | cut -d '/' -f 1 | rev
	echo ""
	echo ""
done

fi


cal maxdep.sh





#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#