#!/bin/bash

# best to use introduce variables inside function using local keyword
log() {
    # $1 -> 1st param
    # $2 -> 2nd param
    local VERBOSE="${1}"
    local MESSAGE="${@}" # variable local inside scope of the log function; can be used only inside the function
    if [[ "${VERBOSE}" = 'true' ]]
    then
        echo "${MESSAGE}"
    fi
}

backup_file() {
    # this function creates a backup of a file. Returns non-zero status on error.
    local FILE="${1}"

    if [[ -f "${FILE}" ]]
    then   
        local BACKUP_FILE="/var/tmp/$(basename ${FILE}).$(date +%F-%N)"
        log "Backing up ${FILE} to ${BACKUP_FILE}."

        # the exit status of the function will be the exit status of the cp command
        cp -p ${FILE} ${BACKUP_FILE} # -p = preserves file ownership, mode, timestamp on the copied file
    else
        # the file doesn't exist so returning a non-zero exit status
        return 1 # returns from function
    fi
}

function log2 {
    echo "You called the log2 function!"
}

echo "${@}" # script param
# readonly VERBOSE='true' # constant variable
log "Tanvir"
log "true" "Farhan"
log2

backup_file '/etc/passwd'
if [[ "${?}" -eq 0 ]] # check the return status of the most recently executed function
then 
    log "File backup succeeded"
else
    log "File backup failed"
    exit 1 # exit exits the script
fi