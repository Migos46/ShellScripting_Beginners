# Class 5 - Exit codes  
This types of codes let us know if a command is successful or not.  
In `shell`, we can check whether a command has fail or not using the variable for exit codes command `?`. To print it out, we just type in the terminal the following  
`$ echo $?`  
It will output the exit code of the last command run by the `shell`. Usually, the value `0` means that no error has ocurred running the command.  
## First part - Checking error codes after package installation  
Here we will be merge `if` statement with the output of the variable `?` of exit codes.  
1. Unistalling htop to check the installations
	1. Redirecting output of unistallation to a `log` file
2. `line 11` - update and upgrade packages
3. `line 12` - installing `htop` 
	1. steps 2 and 3 redirect its output to the `log` file
4. `line 13` - Check the status after installing package `if [ $? -eq 0 ]` and act in consecuence
## Second part - Understanding exit values
The same code but the first part is used to explain visually that the exit code variable `?` updates its value everytime a command is run.  

Below you can find the first piece of code to illustrate the change of the variable for exit codes:
```shell
directory=/fakeDir
if [ -d directory ] #Here there is error >0
then
    echo "The directory $directory exits"
else
    echo $? # Here error code still > 1
    echo "The directory $directory NOT exits"
    echo $? # Here the value is 0 becuase the echo command successfullly output the sentence
fi
```
Mention that in the script, the code has been change a bit to play with a fak directory and a existing directory and illustrate the behaviour of the variable `?`
# Third part - Playing with EXIT command
Using `exit [exitCode]` to force the `shell` script to exit and forcing the exit code to be whatever number is hardcoded in [exitCode]. The rest of the lines under an exit command are ***NOT*** executed.

>**TIP**   
>Play around changing the exit code values and after the script is done, print the variable in the terminal like in the scrip
>`$ echo $?`