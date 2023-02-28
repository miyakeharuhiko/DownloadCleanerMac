#! /bin/bash

## Change delimiter to newline code
IFS='
'
for file in $(find ~/Downloads  -mtime +15)
do
    echo $file
    ## Check first charactor of file name
    # if [[ $(echo $file | cut -c 1) == "." ]]; then
    # continue
    # fi

    if [[ ! -e $file ]]; then
	continue
    fi
   
    mv $file ~/.Trash/
done
