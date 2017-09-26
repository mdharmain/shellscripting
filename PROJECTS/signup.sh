#script to sign up a new user.

#!/bin/bash
source colour.sh
#==============================================================================================================================================#
#==========================================================SCRIPT==============================================================================#

#function for validating username in signup.

function user()
{
echo "Enter username"
read username

#validating username.

usernamea=(`cat username.txt`)
count=0

if [[ $username =~ ^[a-zA-Z0-9_]+$ ]]
then
	
	for (( i=0; i<${#usernamea[@]}; i++ ))
	do
		if [ $username == ${usernamea[i]} ]
		then
	        	count=1
			echo -e "$bold $red USER ALREADY EXISTS$normal"
			user 
		fi
	done
else
	echo -e "$bold $red USERNAME CANNOT BE EMPTY, USE UNDERSCORE FOR SPACE$normal"
		user
fi

if [ $count=0 ]
then
	echo $username >> username.txt
fi
}
	user


#function for validating password.

function pass()
{
echo "Enter the Password"
read -s password
echo ""

if [ ${#password} -lt 8 ]
then
	echo -e "$bold $red WEAK PASSWORD $normal"
		pass

elif [[ $password =~ [A-Za-z]+ ]] 
then
	if [[ $password =~ [0-9]+ ]]	
	then
		echo "Confirm Password"
        	read -s passwordconfirm
        	echo ""
	
       				 if [ $password != $passwordconfirm ]
        			 then
				  	echo -e "$bold $red PASSWORD MISMATCH$normal"
					pass
        			 else
					echo $password >> password.txt
					echo -e "$bold $blue SIGNUP SUCCESSFUL$normal"
					echo ""
					echo -e "$bold $green SIGNIN TO TAKE TEST$normal"
					bash signin.sh
				 fi
        else
		echo -e "$bold $red INCLUDE NUMBERS IN PASSWORD $normal"
                 pass
	fi
else
	echo -e "$bold $red PASSWORD SHOULD CONTAIN ALPHANUMERIC CHARACTERS$normal"	
		pass
fi	

}
       pass



