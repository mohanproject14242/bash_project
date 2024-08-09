#!/bin/bash 


read -p "software to install" 
echo "the os $(uname)"

if [ "$(uname)" = "Linux" ]; then 
    echo "installing in the linuc" 
else
    echo "installing on the another operating system " 
fi