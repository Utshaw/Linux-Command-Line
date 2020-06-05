#!/bin/bash

NUM=$(( 1 + 2 ))
echo "${NUM}" # 3
NUM=$(( 6 * 8 ))
echo "${NUM}" # 48
NUM=$(( 6 / 4 ))
echo "${NUM}" # 1 integer division; doesn't support floatin point arithmetic
REM=$(( 6 % 4 ))
echo "${REM}" # 2 -> remainder of 2
DICEA='3'
DICEB='6'
NUM=$(( DICEA + DICEB )) 
echo "${NUM}" # 9
MY_NUM=9
(( MY_NUM++ ))
echo "${MY_NUM}" # 10
(( MY_NUM-- ))
echo "${MY_NUM}" # 9
(( MY_NUM+=5 ))
echo "${MY_NUM}" # 14
OTHER_NUM=$(( MY_NUM+25 ))
echo "${OTHER_NUM}" # 39
let NUM='2 + 3'
echo "${NUM}" # 5
expr 1 + 1
NUM=$(expr 2 + 3)
echo "${NUM}" # 5