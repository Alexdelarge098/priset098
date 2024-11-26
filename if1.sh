#! /bin/bash

echo "Enter the number to check"

read n 

if [[ $n < 10 ]]
then
 echo "Te value is lesser than 10"
else
 echo "The value is greater than 10"
fi
