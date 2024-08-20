#!/bin/bash 

echo "today we are creating the filebackup" 

backup(){ 
    if [ -f "$1" ]; then 
        cp "$1" "$1.bak" 
        echo "the file back up is created" 
    else 
        echo "error while creating the backup file" 
    fi 
    

}

backup $1