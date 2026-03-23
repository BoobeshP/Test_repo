#!/bin/bash

echo "==== Jenkins Freestyle Job Execution ===="
echo "Date: $(date)"
echo "User: $(whoami)"
echo "Working directory: $(pwd)"

echo "Creating directory..."
mkdir -p output

echo "Writing output to file..."
echo "Hello from Jenkins on $(hostname)" > output/result.txt

echo "Listing output directory:"
ls -l output

echo "==== Script completed successfully ===="
``
