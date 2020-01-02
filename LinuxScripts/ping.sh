#!/bin/bash
for i in {60..86}
do
    ping -c 3 166.66.64.$i
done
