#!/bin/zsh

echo "Welcome tarnished. Please select you starting class:
1 - Samurai
2 - Prisioner
3 - Prophet"

read class

case $class in

	1)
		type="Samurai"
		hp=10
		attack=20
         # Double semicolons is used to brake the case
		;;
	2)
		type="Prisioner"
                hp=20
                attack=4
                ;;
	3)
		type="Prophet"
                hp=30
                attack=4
                ;;
esac

echo "You have chosen $type class. Your HP is $hp and your attack is $attack"

echo "You die"

# First beast battle
beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches. Prepare to battle. Pick a number between 0-1. (0/1)"

read tarnished

if [[ $beast == $tarnished && 47 > 27 ]]; then
	echo "Beast VANQUISED!! Congrats fellow tarnished"
else
	echo "You die"
	exit 1
fi

sleep 2

echo "Boss battle. Get started. It's Margit. Pick a number between 0-9"

read tarnished

beast=$(( $RANDOM % 10 ))

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
        if [[ $USER == "parallels" ]]; then
		echo "Congrats $USER, Beast vanquished"
	else
		echo "You are not user: $USER"
	fi
elif [[ $USER == "bernard" ]]; then
	echo "Hey, $USER always wins. You vanquished beast."
else
        echo "You die"
fi