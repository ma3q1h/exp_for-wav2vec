#!/bin/bash

if [ "$1" = "" ]; then
    echo "no argument "
else
    if [ ! -d "./$1" ]; then
        mkdir ./$1
        echo " made ./$1"
        mkdir ./$1/datasets
        echo " made ./$1/datasets"
        mkdir ./$1/results
        echo " made ./$1/results"
        cp -r ./jdrt ./$1/jdrt
        echo " copied jdrt set"
        cp ./inference2.ipynb ./$1/inference2.ipynb
        cp ./training2.ipynb ./$1/training2.ipynb
        cp ./config.yml ./$1/config.yml
        echo " copied training2.ipynb & inference2.ipynb & config.yml"
    else
        echo "$1 is already existing"
    fi
fi