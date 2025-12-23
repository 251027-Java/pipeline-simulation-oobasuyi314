#!/bin/bash

if [ -f "source_code.txt" ]; then
    echo "Compilation Success"
else
    echo "Error: source_code.txt not found"
    exit 1
fi

if [ $((RANDOM % 2)) -eq 0 ]; then
    echo "Tests Failed"
    exit 1
else
    echo "Tests Passed"
fi

touch artifact.jar
echo "Package: artifact.jar created"

mkdir -p deploy
mv artifact.jar deploy/
echo "Deploy: artifact.jar moved to deploy/"

