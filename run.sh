#!/bin/bash

echo "==== Jenkins Freestyle Job Execution ===="
echo "Date: $(date)"
echo "User: $(whoami)"
echo "Working directory: $(pwd)"

echo "Creating directory..."
mkdir -p output

echo "Writing output to file..."
echo "Hello from Jenkins on $(hostname)" > output/result.txt

echo "Setting permissions..."
chmod 755 output
chmod 644 output/result.txt

echo "Listing output directory with permissions:"
ls -ld output
ls -l output/result.txt

echo "==== Script completed successfully ===="
