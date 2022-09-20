#!/bin/zsh  

sh_name='zsh'

echo "My shell is $sh_name"
echo 'My parameter $sh_name expands to '$sh_name''

# waits N seconds
sleep 1

echo "Now we are going to print an array element by elemnet"
sh_types=(sh bash zsh ksh csh etc)

echo "Types of shells"

for types in "${sh_types[@]}"
do
    echo "$types"
    sleep 0.5
done  

echo 'To get a specific possition fo the array do ${sh_types[3]} -> '${sh_types[3]}''
echo 'zsh allows to refer an elemnt of the array withput curly brackets $sh_types[2] -> '$sh_types[2]''