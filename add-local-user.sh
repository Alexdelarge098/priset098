#! /bin/bash

echo "the UID is ${UID}"

if [[ $UID -ne 0 ]]
then 
  echo "The script must be run as superuser do"
  exit 1
fi

read -p 'enter the username to create:' USER_NAME 
read -p 'enter the name of the person who's this account:' COMMENT
read -p 'enter the password to user for the account:' PASSWORD
useradd -c "${COMMENT}" -m ${USER_NAME}
echo ${PASSWORD} | paswwd --stdin 
passwd -e{USER_NAME}
