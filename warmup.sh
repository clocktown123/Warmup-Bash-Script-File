#!/bin/bash

#First argument: keyword
keyword=$1

#Second argument: target directory
dir=$2

#initialize counter
count=0

#Loop through each file in the directory
for file in "$dir"/*; do
        #count how many times the keyword is in those files
        num=$(grep -o -i "$keyword" "$file" | wc -l)
        #increment the count variable
        count=$((count + num))
done

#output the total times the keyword is in the files for the directory
echo $count
