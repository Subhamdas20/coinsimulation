#! /bin/bash 


#tails=0
#heads=1
head=0;
tail=0;
while [[ $head -lt 21 ]] && [[ $tails -lt 21 ]]
do
rann=$((RANDOM%2))
if [[ $rann -eq 0 ]] && [[ $tails -le 21 ]]
then
	# echo "Tails is the winner"
    tails=$(($tails+1))
elif [[ $rann -eq 1 ]] && [[ $head -le 21 ]]
	then
	# echo "Heads is the winner"
    head=$(($head+1))
    
else
	head=$head;
	tails=$tails
fi

done

echo "Number of times head won = "$head
echo ".................................."
echo "Number of times tails won =" $tails
echo "......................................"
if [[ $tails -ge 21 ]]
then
	diff1=$(($tails-$head))
	echo "Tails won by differnce of -" $diff1
elif [[ $head -ge 21 ]]
	then
	diff2=$(($head-$tails))
	echo "Heads won by differnce of -" $diff2
elif [[  $head -eq $tails ]]
	then
	echo "Its a tie"
else
diff2=$diff2
fi

# echo "Number of times tails won = " $j
# echo "Number of times heads won = " $k

