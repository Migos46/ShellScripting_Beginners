#!/bin/zsh

echo "------ Hello While ------"
myVar=0
while [ $myVar -le 10 ]
do
    echo "do something until $myVar"
    myVar=$(($myVar + 1))
    sleep 0.25
done
echo "------ END WHILE ------"

workingFile=wFile
logF=while.log
if [ ! -f $workingFile ]
then
    touch ./$workingFile
    echo "Working file created on $(date)" >> $logF
fi
    
while [ -f $workingFile ]
do
    echo "$(date) -> The file $workingFile exists" >> $logF
    echo "Doing heavy stuff on the file" >> $workingFile
    echo "Maybe I'm an important file that needs to be always created" >> $workingFile
    sleep 5
    if [ $myVar -le 15 ]
    then
        myVar=$(($myVar + 1))
        echo "Var equals to $myVar" >> $workingFile
    else
        rm $workingFile
    fi
done

echo "File $workingFile has been deleted on $(date)" >> $logF
echo "The file no longer exits, exiting with code $?"