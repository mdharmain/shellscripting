#!/bin/bash
source colour.sh
echo ""
echo -e "$bold $green INSTRUCTIONS $normal"
echo "
1. Test contains 10 questions.
2. Attending all questions is mandatory.
3. No negative marking.
4. Max time for each question is 30s.
5. Test will terminate automatically after 5minutes.
6. All the best."
echo ""
echo -e "$bold$blue                     $green <<PRESS ENTER TO START THE TEST>>$blue                           $normal"

echo -e "$bold$blue                     $green <<PRESS [E] TO EDIT THE PROFILE>>$blue                           $normal"
read key

if [ "$key" == "E" ]
then

	bash edit.sh $1
else 

	bash test.sh

fi
