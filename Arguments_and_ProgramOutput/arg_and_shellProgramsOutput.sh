#/bin/zsh

# First we have two arguments order by its position $1 $2 after the script call
name=$1
bodyPart=$2

# Using outputs of shell programs to define variables
user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Good morning $name"
sleep 1
echo "You're looking good today"
sleep 1
echo "Please wash your $bodyPart before leaving the house!"
sleep 3

echo "You are currently logged in as $user and you are in the directory $whereami. Today is $date"