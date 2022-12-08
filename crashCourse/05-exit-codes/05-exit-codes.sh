#!/bin/zsh
# Implementeing some use cases of exit codes
# First I'll remove htop from the package manager since I want to try exit codes when installing
# Remember if you are using linux, you must much you package manager (apt for debian distros for example)
package=htop
echo "------ Unistalling ------" >> brewPackages.log
brew uninstall --force $package >> brewPackages.log
echo "------ uninstalled finished with code: $?" >> brewPackages.log

echo "------ Installing $package ------" >> brewPackages.log
brew update -f >> brewPackages.log && brew upgrade -v >> brewPackages.log
brew install -vf $package >> brewPackages.log
if [ $? -eq 0 ]
then
    echo "$package installed successfully"
    echo "The binaries has benn written in"
    which $package
else
    echo "FAILURE: fail to install $package" >> brewPackages.log
fi

# PART 2 Working with directories

directory=/fakeDir

if [ -d $directory ]
then
    echo $?
    echo $?
    echo "The directory $directory exits"
else
    echo $?
    echo $?
    echo "The directory $directory NOT exits"
fi
directory=/etc
if [ -d $directory ]
then
    echo $?
    echo $?
    echo "The directory $directory exits"
else
    echo $?
    echo $?
    echo "The directory $directory NOT exits"
fi

echo "The exit code is: $?"

# PART 3 - Using exit to exit the script with a exit code no matter what
if [ -d $directory ]
then
    echo "The directory $directory exits"
    exit 14
else
    echo "The directory $directory NOT exits"
    exit 1
fi

echo "The exit code is: $?" 
echo "This echo are not going to be printed"
echo "There are if-else both with exit statements, no way this is ging to print out"

# After running the script, you can check the exit value $? in the terminal and play and change the values of the exit values in the if-else