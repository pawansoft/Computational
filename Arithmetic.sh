#!/bin/bash

read -p "Enter the first number" num1
read -p "Enter the Second number" num2
read -p "Enter the thierd number" num3

Compute1=$(($num1 + $num2 * $num3))
echo $Compute1
