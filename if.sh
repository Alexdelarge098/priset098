#! /bin/bash

echo "Enter the number to check"

read n

if [[ $n < 10 ]]
then
 echo "THe number is lesser than 10"
else
 echo "The number is not lesser than 10"
fi
