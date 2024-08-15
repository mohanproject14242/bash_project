#!/bin/bash 

packages="$@" 

for pack in $packages 
do 
    if systemctl is-active --quiet $pack ; then 
        echo " it is already $pack is started" 
    else 
        echo "it is not started" 
        sudo systemctl start $pack
        if [[ $? -eq 0 ]]; then 
            echo "startted sucessfully" 
        else 
            echo "failed to start nginx"
        fi
    fi
done