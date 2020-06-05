#!/bin/bash


for myVar in "${@}"
do
    echo "${myVar}"
done

case "${myVar}" in 
farhan)
    echo "You are Farhan"
    ;;
tanvir)
    echo "You are Tanvir"
    ;;
utshaw)
    echo "You are Utshaw"
    ;;
*)
    echo "You are nobody"
    ;;
esac