#!/bin/zsh

#User innput variables
echo "What is your name?"
read name
echo "How old are you?"
read age

echo "Hello, $name, you are $age years old."

# Waits for n seconds
sleep 2

#built-in variables
echo "$USER, $SHELL, $PWD,$HOSTNAME"

# To do math in whatever shell use expression between 2 parenthesis $(( Some math ))
# RANDOM generates 16-bit integer between 0-32767
# Taking the modulus, gives a number between 0 and age number
random=$(($RANDOM % age))
math=$((random + age))

sleep 2

echo "$name, math is also posible in shell scripting, you will be finished with shell scripting at $math years "