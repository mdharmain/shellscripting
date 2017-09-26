#Script to sign up by storing the database of a user.

#!/bin/bash

source colour.sh

#======================================================================================================================================================#

function signupdata()
{

echo -e "$bold $blue                                 SIGNUP PAGE                                    $normal"
       

echo -n "[Name]:"
read name

if [[ $name =~ ^[0-9A-Za-z_.]+$ ]]
then
echo -n "[e-mail]:" 
read email

#validating for email.

	if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
	then
		echo -n "[Phone No.]:"
		read phoneno
			
#validating for phone no.
			
			if [[ "$phoneno" =~ ^[0-9]{10}$ ]]
			then
		
                                  echo -n "[DOB (dd/mm/yy)]:"
				  read DOB
					
#validating for date of birth.
			
	          			if [[ "$DOB" =~ ^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$ ]]
					then
						
					    echo -n "[Place]:"
					    read place
#validating for place name.
					
				              if [[ "$place" =~ [A-Za-z] ]]
					      then
						
	  
#function for validating password.
   
  					function pass()
 				 {
  					echo -n "[Password]:"
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
                  					echo -n  "[Confirm Password]:"
                  					read -s passwordconfirm
							echo ""
                  
                  
                                   			if [ $password != $passwordconfirm ]
                                   			then   
                                          			echo -e "$bold $red PASSWORD MISMATCH$normal"
                                          			pass
                                   			else   
                                   		
#storing all validated values into .csv file.
				             
					                         echo -e "$bold$green SIGNUP SUCCESSFUL $normal"
 
                                                                 echo "$name;$email;$phoneno;$DOB;$place;$password;`date`" >> database.csv

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

                      
                      
                                              else
							echo -e "$bold $red PLACE NAME SHOULD CONTAIN ONLY ALPHABETS $normal"
                                                                             signupdata
					      fi


			                else
						echo -e "$bold $red IMPROPER DATE $normal"
							signupdata
					fi

			else
				echo  -e "$bold $red IMPROPER PHONE NUMBER $normal"
	                                     signupdata
			fi


	else
		echo -e "$bold $red IMPROPER EMAIL ID $normal"
                          signupdata
	fi          
else
	echo -e "$bold $red USERNAME SHOULD NOT BE EMPTY / USE UNDERSCORE INSTEAD OF SPACE$normal"
fi
}

		signupdata                
