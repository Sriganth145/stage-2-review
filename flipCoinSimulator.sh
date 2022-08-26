#!/bin/bash


head=0;
tail=0;

declare -a arr
i=0

while [ $head -ne 21 ] && [ $tail -ne 21 ]
do
	a=$((RANDOM%2));

   	if [ $a -eq 0 ]
	then
		head=$((head+1));
	else
		tail=$((tail+1));
	fi
	arr[i++]=$a
done
if [ $head -eq 21 ] && [ $tail -eq 21 ]
then
	while [ head -ne 23 ] && [ tail -ne 23 ]
	do
		a=$((RANDOM%2));

   		if [ $a -eq 0 ]
		then
			head=$((head+1));
		else
			tail=$((tail+1));
		fi
		arr[i++]=$a
	done
	if [ $head -eq 23 ]
	then
		echo "heads won" $((head-tail));
	else
		echo "tails won" $((tail-head));
	fi
	
elif [ $head -eq 21 ]
then
	echo "heads won" $((head-tail));
else
	echo "tails won" $((tail-head));
fi

for ((j=0;j<i;j++))
do
	if [ ${arr[$j]} -eq 0 ]
	then
		echo "heads"
	else
		echo "tails"
	fi
done
