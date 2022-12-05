Class 2 - Variables  
This script can be divided in 4 parts:  
1. `echo` custom variables  
2. Showing a typical use case of variables  
3. `Subshell` or `Command substitution`  
4. Using `env` variables  

To create a variable in a `shell` script, type the name of the variable followed by `=` and the content of it. ***No spaces*** are allowed before and after the `=`.
## 1
Creating two variables to play around with, `myName` and `color` but please create more and keep playing.  
To reference a variabel, on can simply add `$` sign in front of it like in the sript.  
Then we use `echo` to print out text along with the values that the variables contain.  
Be aware of how the `shell` is behaving. The script uses double quotes `"` instead of single quotes to create the output sentence using the value of the variables. Otherwise, if the scripts uses single quotes `'` there is no referencing to the varible.
## 2  
Example of how a `variable` can be useful when there is something repetitive.
## 3  
[Command substitution](https://www.gnu.org/software/bash/manual/html_node/Command-Substitution.html) for catching the output of commands. See the examples.  
## 4  
Mentioning that `environmental` variables created by the `OS` are also `variables` and can be reference as any other custom one.  
Also remember that the `env` command outputs those environmental variables like `$USER` `$HOME` etc.  
Key difference is that environmental variables are always in `CAPITAL` letters and the user must not create custom variables in capital, better in lowercase.