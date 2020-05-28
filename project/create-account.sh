#!/bin/bash

# This script creates an account on the local system
# You will be prompted for the account name & password

# Ask for the user name
read -p 'Enter the username to create: ' USER_NAME


# Ask for the real name
read -p 'Enter the name of the person who this account is for: ' COMMENT

# Ask for the password
read -p 'Enter the password to use for this account: ' PASSWORD

# Create the user
