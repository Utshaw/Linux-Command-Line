#!/bin/bash
# Display the UID and the username of the user executing the script
# Display if the user is root user or not

# Display the UID
USER_ID=${UID}
echo "You UID is ${USER_ID}"

USER_NAME=$(id -un)
if [[ "${?}" -ne 0 ]] # ? variable holds exit status of the most recently executed command
then
    echo "The id command did not execute successfully"
    exit 1
fi

echo "Your name is ${USER_NAME}"
USER_NAME_TO_TEST_FOR='utshaw'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then 
    echo "You are utshaw"
else
    echo "You aren't utshaw"
    exit 1
fi

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then    
    echo "You are not Utshaw"
    exit 1
else   
    echo "You are Utshaw"
fi


exit 0 # if we don't specify this exit code the exit status of the  most recently executed command will be set