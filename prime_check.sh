#! /usr/bin/bash
read -p "enter a number:" num
srnum=$(echo "scale=0;sqrt($num)" | bc)
prime=true
for (( i=2; i<=srnum; i++ ))
do
    if [ $(echo "$num % $i" | bc) -eq 0 ]
    then
        prime=false
    fi
done
echo $prime