#!/bin/zsh

echo " --- 1 --- "
# Variables created 
myName="Migos"
color="green"
# Use the variables to print information out. To reference a variable use $
# Make your own variables adn play around 
echo "My name is $myName"
echo "My favourite color is $color"
# shell interprets variables when they are between double quotes
echo 'My name is $myName'
# This is not even working
# echo 'I'm a person whose favourite color is $color'

echo "------------------------------"

echo " --- 2 --- "
# First uses of varibales
# Using variables to change the same instance that appears in more than one place
myRepetitiveInstance="I'm repetitive"
echo "Hello $myRepetitiveInstance"
echo "This part of the script also needs $myRepetitiveInstance"
echo "$myRepetitiveInstance being used again, and I can change only once to reuse the same code"

echo "------------------------------"

echo " --- 3 --- "
# Also catching output of commands 
files=$(ls -la)
echo "$files"

echo "------------------------------"

cwd=$(pwd)
echo "My current directory is $cwd"
currentDate=$(date)
echo "$myRepetitiveInstance on $currentDate"

echo "------------------------------"
# Rememnber that we can execute directly commands
echo "Executing date command directly without saving it in any variable"
date

echo "------------------------------"

echo " --- 4 --- "
# Also you can use ENVIRONMENTAL variables like USER or SHELL
echo "Hi, I'm logged in as $USER and using the shell $SHELL"

echo "------------------------------"

echo "Check the list of ENV variables using the env command:"

env