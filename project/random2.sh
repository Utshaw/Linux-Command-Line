#!/bin/bash

echo "You executed this command: ${0} ${1}"

echo "You used $(dirname ${0}) as the path of the $(basename ${0}) script"

NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} on the command line"

if [[ "${NUMBER_OF_PARAMETERS}" -lt 1  ]]
then
    echo "Usage: ${0} USER_NAME [USER_NAME]..."
    exit 1
fi

for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c48)
    echo "${USER} : ${PASSWORD}"
done