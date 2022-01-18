#! /usr/bin/bash
read -p "enter minutes:" min
read -p "enter seconds:" sec
echo
while true
do
    if [ $sec -eq 0 ]
    then
        if [ $min -eq 0 ]
        then 
            break
        else
            sec=60
            (( --min ))
        fi
    else
        echo -e "\e[1A\e[K$min:$sec"
        sleep 1
        (( --sec ))
    fi
done