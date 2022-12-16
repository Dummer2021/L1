#!/bin/bash
 
for number in {1..100}; do
    if [ $((number%3)) -eq 0 ]; then
        echo "Fizz"
    else
        echo $number
    fi
done
