#!/bin/bash

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
