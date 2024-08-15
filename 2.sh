#!/bin/bash 

echo "this is the program get first 10 bigest files in file system passed via positoinal argument" 
path="$1"
echo $path
du -ah $path | sort -hr  | head -n 10 >filesize.txt 

### herer we are getting biggest files inside the specified path  

