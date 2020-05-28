#!/bin/bash
USER_ID="${UID}"

if [[ "${USER_ID}" -eq 0 ]]
then
    echo "Proceeding with root user privilege"
else
    echo "You need to execute with root privilege"
    exit 1
fi

