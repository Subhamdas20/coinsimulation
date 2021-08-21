#! /bin/bash


#tails=0
#heads=1

for ((i=0;i<80;i++))
do
rann=$((RANDOM%2))
if [[ $rann -eq 0 ]]
then
	# echo "Tails is the winner"
    j=$(($j+1))
else
	# echo "Heads is the winner"
    k=$(($k+1))
fi
done
echo "Number of times tails won = " $j
echo "Number of times heads won = " $k