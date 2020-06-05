#!/bin/bash

# if [[ "${1}" = "start" ]]
# then
#     echo "Starting"
# elif [[ "${1}" = "stop" ]]
# then
#     echo "Stopping"
# elif [[ "${1}" == 'status' ]]
# then
#     echo "Status:"
# else
#     echo "Supply a valid option" >&2
#     exit 1
# fi



case "${1}" in 
    start)
        echo "Starting."
        echo "Second line"
    ;;
    stop)
        echo "Stopping"
        echo "Second line"
    ;;
    status|state|--status|--state) # matches "status" or "state"
        echo "Status;"
        echo "Second line"
    ;;
    *)
        echo "Supply a valid option" >&2
        exit 1
    ;;

esac
    