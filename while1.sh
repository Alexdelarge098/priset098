#! /bin/bash

echo "Enter the value to check"
read n

while (( $n <=10 ))
do 
 echo "$n"
 n=$(( n+1 ))
done

