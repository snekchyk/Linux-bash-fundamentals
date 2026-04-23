#!/bin/bash

#Cases

echo "What is your dream? 1 - Fly to the moon, 2 - See Titanic, 3 - Buld a rocket"

read dream

case $dream in
	1)
		echo "You'll fall)"
		;;
	2)
		echo "You'll choke)"
		;;
	3)
		echo "You'll fail)"
		;;
		
esac


name=$1
random=$(( $RANDOM % 2 ))

# You can use exit 1 to stop program with exit code 1(fail)
# You can use exit 0 to stop program with exit code 0(success)

echo "You need to win twice in a row"
echo "Pick first(0/1): "

read number

if [[ $random == $number ]]; then
    echo "Win"
else
    echo "Defeat"
    exit 1
fi

random=$(( $RANDOM % 2 ))

echo "Pick second(0/1): "

read number

if [[ $random == $number ]]; then
    echo "Congratulations!!"
else
    echo "Defeat"
    exit 1
fi

# There are many operators in conditions:
# || - means OR
# && - means AND

if [[ $name == "Snekchyk" && $USER == "root" ]]; then
    echo "Come in"
else
    echo "Good bye"
fi

if [[ $USER == "snekchyk" || $USER == "root" ]]; then
	echo "Hello my boss"
elif [[ $name == "hacker" ]]; then
	echo "Fsociety"
else
	echo "Go away"

fi
