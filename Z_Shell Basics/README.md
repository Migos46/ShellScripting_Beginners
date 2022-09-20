# What is a login shell?  
Basically, the `login shell` is just there to take a list of commands and run them; it doesn’t really care whether the commands are in a file, or typed in at the terminal.  On the other hand, an `interactive`shell is the one that it is wating for  each command to run after typing them at the prompt. The `prompt` is the command line where one types commands and it refers to the characters that appear just before the cursor `user@hostname:~`  
  
To test if a shell is a login shell or not just run the following script:  
```terminal
#!/bin/zsh
if [[ -o login && -o interactive ]]; then
	echo "This is an interactive login shell"
elif [[ -o interactive ]]; then
	echo "This is an interactive shell"
elif [[ -o login ]]; then
    echo "This shell is a login shell"
elif [[ ! -o interactive ]]; then
    echo "This shell is a non interactive shell"
else
    echo "Don't recognised shell yet"
fi
```
***where:***
- `if statement:` conditional statement which evaluates the expresion between the squer brackets
- `[[ expression to test ]]:` the expresion always goes between two square brackets 
- `-o:` tells the shell to test an option
- `login:` it the ***`option`*** to test
	- The opposite check willl be like in `c programming` `[[ ! -o login ]]` or using `nologin`
- `;`semicolon tells the shell that the next command, which is `then`, is written right after. One can avoid the `;`and just put the `then`command in a new line, or put all commands in a row, like:  
	- `$ if [[ -o login ]]; then; echo "yes"; else; echo "no"; fi`  
>**Note:**
>If you copy and paste the if els example after the prompt of an interactive shell, the result will be `This shell is and interactive shell`  
# Parameters  
Parameters are mostly kwown as variables in other programming languages. To assign a value to a parameter:  
- `foo='This is a parameter'`  
>**Note:**
>There are no spaces around the `=` becuase it will be treated as a command to execute  
  
To get the value stored in a parameter, which is called ***parameter expansion***, a `$`sign must be type in front of the parameter name `$foo`  
# Arrays  
Arrays, like in other programming languages, ara variables that contain more than one value, i.e the foo array `foo=(bananna strawberry apple)` contains three parameters which are three different fruits.
To get a specific possition in the array:
- `${foo[3]}` will output `apple`becuase arrays start with the ***index*** 1, unlikely c programmers that are used to start with ***index*** 0
- `zsh`allows to refer elements of array without curly brackets like `$foo[1]`
>***TIP:***
>To iterate over an array, one can use a for loop like in the script example:
>```terminal  
>sh_types=(sh bash zsh ksh csh etc)
>
>for types in "${sh_types[@]}"
>do
>    echo "$types"
>    sleep 0.5
>done  
>```
>Note that the array expands to types thanks to the `@`operator.  
