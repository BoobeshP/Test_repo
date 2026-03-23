#!/bin/bash

TARGET_DIR="/home/administrator/output"

echo "==== Jenkins Freestyle Job Execution ===="
echo "Date: $(date)"
echo "Running user: $(whoami)"
echo "Target directory: $TARGET_DIR"

echo "Creating directory in administrator home..."
sudo mkdir -p $TARGET_DIR

echo "Writing output file..."
echo "Hello from Jenkins on $(hostname)" | sudo tee $TARGET_DIR/result.txt > /dev/null

echo "Setting permissions..."
sudo chmod 755 $TARGET_DIR
sudo chmod 644 $TARGET_DIR/result.txt

echo "Changing ownership to administrator..."
sudo chown -R administrator:administrator $TARGET_DIR

echo "Verifying result..."
ls -ld $TARGET_DIR
ls -l $TARGET_DIR/result.txt

echo "==== Script completed successfully ===="
