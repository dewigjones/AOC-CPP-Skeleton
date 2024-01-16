#! /bin/bash
chars=\ \ \ \*
for i in {1..5} ; do
    for j in {1..32} ; do
            echo -n "${chars:RANDOM%${#chars}:1}"
    done;
echo 
done;
