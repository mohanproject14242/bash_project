#!/bin/bash 

if [[ $# -eq o ]]; then 
    echo "no arguments are providec" 
    exit 1
fi

## now check the wheathe user is root user or not 

if [[ $(id -u) -ne 0 ]]; then 
    echo "please run this command as root user" 
    exit 2
else 
    for packages in $@
    do 
        echo "wheather check the package or not" 
        if which $packages &> /dev/null
        then    
            echo "already installed in the linux" 
        fi 
    done
fi