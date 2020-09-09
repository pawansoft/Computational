#!/bin/bash

read -p "Enter the first number" num1
read -p "Enter the Second number" num2
read -p "Enter the thierd number" num3

declare -A operations

Compute1=$(($num1 + $num2 * $num3))
echo "$num1 + $num2 * $num3 = $Compute1"

Compute2=$(($num1 * $num2 + $num3))

echo "$num1 * $num2 + $num3 = $Compute2"

Compute3=`echo "scale=1;$num1 + $num2 / $num3" | bc`

echo "$num1 + $num2 / $num3 = $Compute3 "



Compute4=`echo "scale=1;$num1 % $num2 + $num3" | bc`

echo "$num1 % $num2 + $num3 = $Compute4"

operations[1]=$Compute1
operations[2]=$Compute2
operations[3]=$Compute3
operations[4]=$Compute4

echo ${operations[@]}

for((count=1; count <= 4; count++))
do
	arr[$count]=${operations[$count]}
done
echo ${arr[@]}
