#function for countdown

#!/bin/bash
source colour.sh
#===================================================================================================================================#



function countdown()
{
for((i=30; i>0; i-- ))
do   
        
	echo -ne   "									$bold$red TIME:$normal$i\033[0K\r"
	sleep 1


done


}


