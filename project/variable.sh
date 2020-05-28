#!/bin/bash
echo "Hello"
WORD='script' # by convention variable is uppercase
echo "$WORD" # WORD variable will be expanded outputs: script
echo '$WORD' # WORD variable won't be expanded outputs: $WORD
echo "This is a shell $WORD"
echo "This is a shell ${WORD}" 
echo "${WORD}ing is fun" # scripting is fun
ENDING='ed'

# Combining variables
echo "This is ${WORD}${ENDING}"

# Change the value stored in ENDING variable
ENDING='ing'
echo "${WORD}${ENDING} is fun"

NEW_VAR="${WORD}${ENDING}"
echo "${NEW_VAR}"

