#!/bin/zsh

# Function definition  
my_function(){
    echo 'Inside the function, $0 referst to the name of the function, which is '$0''
}

my_function

echo 'Tip:\nOutside a function $0 refers to the name of the shell, which is '$0''