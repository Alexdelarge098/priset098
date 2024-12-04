#! /bin/bash

if [[ "${UID}" -ne 0 ]]
then 
 echo 'please run with sudo or as a root'
 exit 1
fi

if [[ "${#}" -lt 1 ]]
then 
 echo "usage: ${0} USER_NAME [COMMENT]..."
 echo 'create an account on the localsystem with the USER_NAME and a comment field of a comment.'
 exit 1
fi

USER_NAME="${1}"

COMMENT="${@}"

PASSWORD=$(date +%s%N | sha256sum | head -c48)

useradd -c "${COMMENT}" -m ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then 
 echo 'the account could not be created'
 exit 1
fi

echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then 
 echo 'The password for the account could not be set.'
 exit 1
fi

passwd -e ${USER_NAME}

echo 
echo 'username:'
echo "${USER_NAME}"
echo 
echo 
echo 'password:'
echo "${PASSWORD}"

