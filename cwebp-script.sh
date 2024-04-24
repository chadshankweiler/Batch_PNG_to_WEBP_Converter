#!/bin/bash


for file in *; do
    if [ -f "$file" ]; then 
        if [[ "$file" == *.png ]]; then
            cwebp "$file" -o "${file%.png}.webp"
            echo "Converted $file to ${file%.png}.webp"
        else
            echo "$file is not a png"
        fi
    fi

done
