#!/bin/bash
echo enter the value n
read n
f1=0
f2=1
a=0
echo $f1
echo $f2
for((i=3;i<n;i++))
do
	let a=$(($f1+$f2))
	let f1=f2
	let f2=a
        echo $a
done

