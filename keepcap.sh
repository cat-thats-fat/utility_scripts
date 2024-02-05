#!/bin/bash

echo "Removing all files that are not .cap from output directory"

outputdir="/home/declanb/airodump_output/"

if [ -n "$(ls -A $outputdir)" ]; then
  for file in "$outputdir"*; do
    if [[ $file != *".cap" ]]; then
      sudo rm "$file"
      echo "Removed $file"
    fi
  done
else
  echo "No files found in the directory"
fi

echo "Done"
input "Press enter to continue"
```
