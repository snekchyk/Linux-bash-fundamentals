#!/bin/bash

x=1

while [[ x -le 5 ]]
do
	echo "$x"
	(( x ++ ))
done


# while true
# do
# 	something
# done

y=1
until [[ $y == 5 ]]
do
	echo "$y"
	(( y ++ ))
done


for num in 1 2 3 4 5;
do
	echo "$num"
done

