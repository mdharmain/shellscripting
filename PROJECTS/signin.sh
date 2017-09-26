# Script to sign in for registered user.

#!/bin/bash
source colour.sh
#======================================================================================================================================================#
echo -e "$bold$blue                                  SIGNIN PAGE                                    $normal"


function sign()
{
echo -n "[e-mail id]:"
read email
echo -n  "[Password]:"
read -s password


#validating email id and password

emailarray=()
passwdarray=()
emailarray=(`cat database.csv | cut -d ';' -f 2`)
passwdarray=(`cat database.csv | cut -d ';' -f 6`) 


arraycount=${#emailarray[@]}
count=0


#loop for comparing the user entered email and password with database in .csv file.

for (( i=0; i<$arraycount; i++ ))
do
	if [ $email == ${emailarray[i]} ] &&  [ $password == ${passwdarray[i]} ]
		then
		
			echo -e "$bold$green logged in $normal"
			count=1
echo -e "$colstrip"
echo -e "$blue                                                  $red$bold USER:$normal $email $blue    $normal" 
echo -e "$blue WELCOME TO LINUX TEST, READ THE INSTRUCTIONS CAREFULLY BEFORE STARTING THE TEST.$normal"
	     		bash instructions.sh $email 
	      
	fi
done

if [ $count = 0 ]
then
	echo -e "$bold$red Invalid email id/password or user not signed up$normal"
	 
			bash commandlinetest.sh		
fi

}

	sign


