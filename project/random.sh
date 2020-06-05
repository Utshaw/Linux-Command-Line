#!/bin/bash
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"


# date command with epoch time and nanoseconds
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c32)
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_-+=' | fold -w1 | shuf | head -c1)
PASSWORD+=${SPECIAL_CHARACTER}
echo "${PASSWORD}"

