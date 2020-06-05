#!/bin/bash

# read the first line from /etc/passwd & outputs to /tmp/data
FILE="/tmp/data"
head -n1 /etc/passwd > "${FILE}"

# read the first three lines from /etc/passwd & appends to /tmp/data
FILE="/tmp/data"
head -n3 /etc/passwd >> "${FILE}"
cat "${FILE}"

read LINE < "${FILE}"
echo "LINE contains: ${LINE}"