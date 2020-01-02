#!/bin/bash
user=$(whoami)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
NORMAL=$(tput sgr0)

for i in {60..86}
do
    host=$( host 166.66.64.$i | cut -d " " -f 5 | cut -d "." -f 1)
    count=$( ping -c 1 166.66.64.$i | grep transmitted | cut -d " " -f 4)
    if [ $count -eq 1 ]
    then
        printf '\e[1;32m%s\e[\n' $host
        #echo "${GREEN} $host ${NORMAL}" 
    else
        printf '\e[1;31m%s\e[\n' $host
        #echo "${RED} $host ${NORMAL}"
    #echo -n
    fi
done
