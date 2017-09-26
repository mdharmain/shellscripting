#=================================edit================================#
#!/bin/bash
source colour.sh
var1=(`sed -n '/Name/p' database.csv| sed 's/;/ /g' `)

var2=(`sed -n "/$1/p" database.csv | sed "s/;/ /g" ` )

for (( i=0; i<=4; i++ ))
do
	echo "[$(($i+1))]${var1[i]} : ${var2[i]}"
done


echo -e "$blue Choose the field to edit$normal"
read field
case $field in
1) echo -n "[Enter previous Name]:"
   read prename
  echo -n "[Enter new Name]:"
	read newname
     var=`sed -n "/$prename/p" database.csv | sed "s/$prename/$newname/g"`
		echo $var >> database.csv
             `awk "!/$prename/" database.csv > temp && mv temp database.csv`
		bash instructions.sh
;;
2) echo -n "[Enter previous emailid]:"
	read preemail
   echo -n "[Enter new emailid]:"
	read newemail	
     var=`sed -n "/$preemail/p" database.csv | sed "s/$preemail/$newemail/g"`
		echo $var >> database.csv
	 `awk "!/$prename/" database.csv > temp && mv temp database.csv`
	bash instructions.sh
;;

3)  echo -n "[Enter previous Phone no.]:"
	read preno
   echo -n "[Enter new Phone no.]:"
	read newno
     var=`sed -n "/$preno/p" database.csv | sed "s/$preno/$newno/g"`
		echo $var >> database.csv
	 `awk "!/$preno/" database.csv > temp && mv temp database.csv`
	bash instructions.sh
;;

5)  echo -n "[Enter previous Place]:"
	read predob
   echo -n "[Enter new Phone Place]:"
	read newdob
     var=`sed -n "/$predob/p" database.csv | sed "s/$predob/$newdob/g"`
		echo $var >> database.csv
	 `awk "!/$predob/" database.csv > temp && mv temp database.csv`
	bash instructions.sh
	;;



*)echo "INVALID INPUT";;
esac


















 
