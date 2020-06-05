#!/bin/bash
ssh server01 "ps -ef | head -3" # execute ps -ef | head -3 command on server01
echo $? # exit status of ssh command will be 255 if error occured otherwise it  is the exit status of the remotely executed command on remote machine
