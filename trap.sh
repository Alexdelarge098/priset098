#! /bin/bash

echo "pid is $$"

trap "echo exit signal is detected" SIGINT

while (( count < 10 ))
do
 sleep 10
 (( count++ ))
 echo "$count"
done
