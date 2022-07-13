#!/bin/bash
read -p "Введите первое цифру: " a
read -p "Введите второе цифру: " b
COUNTER=1
nu=0
while :; do
        aa=$((COUNTER % $a))
        bb=$((COUNTER % $b))
        if [ "$aa" -eq "$nu" ]; then
                if [ "$bb" -eq "$nu" ]; then
                        echo "наименьшее кратное=$COUNTER"
                        break
                fi
        fi
        COUNTER=$((COUNTER + 1))
done
