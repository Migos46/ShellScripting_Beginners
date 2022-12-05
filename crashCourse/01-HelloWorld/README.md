# Class 1 - Hello World  
This very first script is nothing but starting getting along with `shell` scripting and how the shell needs to be initialized.  

***Question?*** How do you initialise a shell script?  
**Answer:** With the `shebang`character sequence  
***Question?*** What the heck is shebang?  
**Answer:** Well, shebang is the combination of the hash character `#`+ exlamation mark `!`, and it is telling which `shell interpreter` to run the script must be used.  

`#!/bin/bash` - bash shell (Typical in linux)  
`#!/bin/zsh` - Z shell (Typical in macOS)  
etc

This initial script just wants to point out that with `shell` scripting you can gather multiple repetitive commands within a task all together to automate the process.  

In this first script we use the `echo` command which prints out any input given. Also we list the files in the current directory and print the `path` of the current directory.