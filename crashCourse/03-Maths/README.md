# Class 3 - Math  
`Maths operations` in `shell` are something that are not super straight forward. For instance, you cannot simply type `$ 2+2` instead, you have to present the information to the `shell` in a way that it wells interpretes the `math operations` you want to perform. That being said, one way of dealing with math in a `terminal` is to use the command `expr` followed by the operation that has to be performed.  
For example:  
`$ expr 2 + 2` - **YES, I enter `spaces` between the `+` sign and the number, otherwise it's not outputing the results**
`$ 4`  
`$ expr 2 - 3`  
`$ -1`  
> **NOTE**
> This works for addition and substraction because in the case of multiplication, which is the `*` character and it is a special one used for wildcard, in this case we can use the `scape` character `\` 

`$ expr 4 \* 5`    
`$ 20`  

### Take away  
Whenever you are doing some math operations, bear in mind that if they are failing, most probably you are using a special character.  
There are ways to avoid typing `scape` character like I show at the end of the script. Also, how to prevent a negative number `-n` to be interpreted as an option for the `expr` command.  

>**BONUS TIP:**
>If you want to know more about `expr` command, you can use the manual of the command as for any other command in the `shell`, like:
`$ man expr` 
It will change the terminal view to the man pages of the expr command in this case (press `q` to come back to the normal prompt).  



