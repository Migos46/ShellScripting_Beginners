# Class 06 - While Loops  
`while` loops will work repeatively in a task until the condition is met. The syntax is as follos (like in `if` statements, will be denoting `space bar` inputs as (space)):
```shell
while(space)[(space)$myVar(space){condition}(space)conditionValue(space)]
do
    #Some code
done

# Real example
myVar=0
while [ $myVar -le 10 ]
do
    echo "do something until $myVar"
    myVar=$(($myVar + 1))
    sleep 0.25
done
```  

## Test code  
The second part of the script is just to mix `if` and `while` statements together in one and to show that while loops are also pretty simple.  
There are three things to be aware of:
1. We use the `if` to check for a `file` existance  
	1. If the `file` does not exist, we create it using `touch`command (check the `man`  page for more info `$ man touch`)
2. Use the `while` statement to be in a loop and filling the `working` and  `log` files with info until it gets `working` is removed
	1.  To automatically rm the `working` file I used `rm` command when `myVar`reaches the number 15.
4. Use `echo` to fill the `log` file  
>**NOTE**   
>Both the `log` and the `working` files are going to be created in you current directory, the directory where your `06-while-loops.sh` script is. 
## Take away  
`While` loops are as simple as `if` statements and merging the best from both worlds, you can start doing ***amazing*** things. Take my code and start improving it with more incredible ideas.