#!/bin/bash

for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c48)
    echo "${USER_NAME} : ${PASSWORD}"
done