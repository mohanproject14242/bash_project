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
        if which $packages &> /dev/null ; then    
            echo "already installed in the linux" 
        else 
            echo "installing the $packages" 
            yum install $packages -y 
            if [[ $? -eq o ]]; then 
                echo " sucessfully installed $packages" 
            else 
                echo "unable to install the $packages" 
            fi
            echo "checking wheather pacages is started or not" 
           
        fi 
        echo "checking wheather package in started or not" 
        sudo systemctl status mysql
        if [[ $? -eq o ]]; then 
            echo "started successfull installes"
        else 
            echo "starting" 
            sudo systemctl start $packages
    done

    echo "checking wheather package in started or not" 
    sudo systemctl status mysql

    if [[ $? -eq o ]]
fi