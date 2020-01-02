#!/bin/bash
user=$(whoami)

for i in {60..86}
do
	echo -n
    host=$(host 166.66.64.$i | cut -d " " -f 5 | cut -d "." -f 1)
    echo $host
    ssh -t $user@166.66.64.$i "sudo reboot"
done
