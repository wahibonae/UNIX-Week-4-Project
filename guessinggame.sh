#!/bin/bash
function countfiles {
    local s=$(ls -1 | wc -l)
    echo $s
}

read -p "How many files are in the current directory: " f
files=$(countfiles)
while [[ $f -ne $files ]]
do
    if [[ $f -gt $files ]]
    then
        echo "Too high, try again."
    elif [[ $f -lt $files ]]
    then
        echo "Too low, try again."
    fi
    read -p "How many files are in the current directory: " f    
done

echo "Congraats! There are $files in the current directory."
echo "Good byee :)"