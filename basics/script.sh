#!/bin/bash

read -p "Enter the filename: " file name

read -p "Enter the command: " cmd

echo -e "!/bin/bash\n$cmd" > "$filename"

chmod u+x "$filename"

git add .
git commit -m "modified $filename"

echo "successfully created $filename and pushed to git!"
