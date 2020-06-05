#!/bin/bash
sudo chage -E 0 woz # expire account woz 
su - woz # can't login as woz
sudo chage -E -1 woz # now account is activated (removes expiration of the account)
