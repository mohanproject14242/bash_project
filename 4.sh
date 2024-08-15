#!/bin/bash 

packages="$@" 

for pack in $packages 
do 
    if systemctl is-active --quiet $pack ; then 
        echo "$pack is started" 
    else 
        echo "it is not started" 
        sudo systemctl start $pack
    fi
done