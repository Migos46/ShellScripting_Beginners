#!/bin/zsh

echo " ------ Checking equality of 2 expresions ------"
num=1
if [ $num -eq 1 ]
then
    echo "Condition evaluated to TRUE"
else
    echo "Condition evaluated to FALSE"
fi

echo " ------ Checking NON equality of 2 expresions ------"
num2=1
if [ $num2 -ne 1 ]
then
    echo "TRUE if $num2 not equal to 1"
else
    echo "FALSE otherwise, $num2 is equal to 1"
fi

echo " ------ Checking GREATER THAN -gt of 2 expresions ------"
num2=1
if [ $num2 -gt 10 ]
then
    echo "TRUE if $num2 is greater than 10"
else
    echo "FALSE otherwise, $num2 is less than 10"
fi

echo " ------ Checking FILE EXISTANCE ------"
myFile="ReADME.md"
# Play changing the uppercase for lowecase, it should be case insensitive as long as the string is correct
if [ -f ./$myFile ]
then
    echo "TRUE if the file $myFile exists"
else
    echo "FALSE if the file $myFile does not exists"
fi
echo " ------ -------------------- ------\n\n"
echo " ------ AWESOME FIRST SCRIPT ------"
echo "Use the knowledge of previous scripts to make something awesome\nExecute some commands base on the output of another command"
programName=htop
myCommand=$(which $programName)
if [ -f $myCommand ]
then
    echo "Running $myCommand"
else
    echo "Installing $myCommand"
    # Like in linux with apt update and upgrade, before installing any package, we make sure everything the fomulae of brew' repo are in the local
    # Also upgrade to update the packages in the local repo previouly pulled
    brew update && brew upgrade -v
    brew install -v $programName
fi
#myCommand=$(which $programName)
#$myCommand

sudo $programName

brew uninstall --force $programName

echo "------ USING the command COMMAND ------"
echo " Checkin if the output of command is true of false (empty string)"
programName=htop
if command -v $programName
then
    echo "Running $programName"
else
    echo "Installing $programName"
    # Like in linux with apt update and upgrade, before installing any package, we make sure everything the fomulae of brew' repo are in the local
    # Also upgrade to update the packages in the local repo previouly pulled
    brew update && brew upgrade -v
    brew install -v $programName
fi

sudo $programName