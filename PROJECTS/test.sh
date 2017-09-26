#displaying the questions randomly.

#!/bin/bash
source colour.sh
source timeout.sh
#==========================================================================================================================================#
randomno=(`shuf -i 1-10 -n 10`)
total=0
ans=(`sed 's/;/ /g' answer.csv`)
count=1


#loop to display questions randomly.

for (( i=0; i<10; i++ ))
do
	
	
	 
	echo ""
	echo -n [$count]
	cat ./QUESTIONBANK/${randomno[i]}.txt
	echo ""
	echo ""
	echo -e "$bold $green Answer:$normal"
	countdown &
	read -t 30  answer
	kill $!
	clear
		if [[ $answer =~ [1-4]{1} ]]
		then
			echo $answer >> useranswers.txt	
		else
			echo 0 >> useranswers.txt
		fi
        count=$(($count+1))
clear     
done

	userans=(`cat useranswers.txt`)

	corans=()


# loop to change the index of correct answers array according to generated random numbers.
	
for ((j=0; j<10; j++ ))
do
	index=${randomno[j]}
	corans+=(${ans[$index-1]})
	

done

	
# loop for comapring the useranswers with the randomly arranged correct answers.

for ((k=0; k<10; k++ ))
do	
	if [ ${corans[k]} -eq ${userans[k]} ]
	then
		total=$(($total+1))
	fi
done	
	echo""
	echo -e "$bold$green YOUR TEST SCORE IS $total $normal"	
	echo -e "$bold$blue                              PRESS [V] TO VIEW TEST                          $normal"
	echo -e "$blue                                 ENTER TO EXIT                                $normal"
	read view
	no=1

# condition for viewing the test if user requests.
 
		if [ "$view" == "V" ]
		then
			for (( i=0; i<10; i++ ))
			do
			      echo -n "[$no]"		 		
	                      cat ./QUESTIONBANK/${randomno[i]}.txt
                              echo -e "$bold$green Correct answer:$normal ${corans[i]}"
			      echo -e "$bold$blue Your answer:$normal ${userans[i]}"
				no=$(($no+1))
			done
		fi

# deleting the useranswers file to avoid overlap for next time.
rm useranswers.txt




#=====================================================================================================================================================#
