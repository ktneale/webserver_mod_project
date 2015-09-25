#!/bin/bash

# Test script written by Kevin Neale (C) 2015.

echo "TEST [START]"

for i in `seq 1 500`;
do
    rm -rf encrypted_response.dat plain_text.txt
    sync
    curl localhost/hello.py > encrypted_response.dat
sync
    ./decrypt encrypted_response.dat plain_text.txt >> /dev/null
sync
    diff plain_text.txt good_plaintext.txt >> /dev/null


    if [ "$?" = "0" ]; then
        echo "passed test:" $i
    else
        echo "failed on test:" $i
        exit
    fi

    sleep 2
done    
            
echo "100% pass"
echo "TEST [END]"

