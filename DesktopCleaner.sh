#! /bin/bash

## Clean up desktop everyday.

## Change delimiter to newline code
IFS='
'

for file in $(find ~/Desktop -mtime +1)
do
    echo $file
    ## Check first charactor of file name
    # if [[ $(echo $file | cut -c 1) == "." ]]; then
    # 	continue
    # fi
    
    if [[ ! -e $file ]]; then
	ecoh $file
	continue
    fi
    
    mv $file ~/.Trash/
done	    
