#! /bin/bash

echo "Enter the value to check"

read n

if [[ $n < 10 && $n > 10 ]] 
then
 echo "The value is lesser than 10"
else
 echo "The value is greater than 10"
fi


