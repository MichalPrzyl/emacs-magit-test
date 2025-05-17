#!/bin/bash

HEADER=$'\033[95m'
OKBLUE=$'\033[94m'
OKCYAN=$'\033[96m'
OKGREEN=$'\033[92m'
WARNING=$'\033[93m'
FAIL=$'\033[91m'
ENDC=$'\033[0m'
BOLD=$'\033[1m'
UNDERLINE=$'\033[4m'
    
# echo "This is some color: ${OKGREEN}ABC${ENDC}"
# echo 'another'

starting_splash(){
    cat <<EOF
================================
Starting simple listing script...
v.1.2.0
================================
EOF
}

starting_splash

echo -e '\n\n'

for file in *; do
    if [[ -d $file ]]; then
	echo "Found ${OKGREEN}$file${ENDC}. This is directory. Skipping..."
	continue
    fi
    
    echo "The file is: ${OKGREEN}$file${ENDC}"
    OUTPUT=$(wc $file | awk -F' ' '{print $1}')
    # I can do the same with just flags on 'wc' utility.
    echo "File has ${OKGREEN}$OUTPUT${ENDC} lines."
    echo "========================================="
done
