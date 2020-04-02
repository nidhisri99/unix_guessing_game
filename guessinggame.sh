#!/usr/bin/env bash
# File: guessinggame.sh

array=($(ls -d */))
count=${#array[@]}
guess=0

function checkguess {
    # Usage of an if statement
    if [[ $1 -lt $2 ]]
    then
    echo "echo Too low"
    elif [[ $1 -gt $2 ]]
    then
    echo "echo Too high"
    fi
}

# Usage of a loop
while [ $guess -ne $count ]
do
echo "Guess the number of directories!"
# Collecting user response
read guess

$(checkguess $guess $count)

done
echo "Your guess is right !  Congrats!"
