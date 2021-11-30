#!/bin/sh

a=10000
b=23
c=18.5
total_height=$2\*$2
total_weight=$1\*$a
bmi=$( echo "scale=2; ($total_weight)/($total_height)" |bc )
echo $bmi
if [ `echo "$bmi >= $b" |bc` -eq 1 ]
then 
	echo "overweight"
elif [ `echo "$bmi >= $c" |bc` -eq 1 ]
then 
	echo "normal weight"
else
	echo "underweight"
fi
exit 0
