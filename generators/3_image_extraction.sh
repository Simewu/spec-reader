#!/bin/bash

set -e

if ! command -v realpath &>/dev/null; then
    echo "Package \"coreutils\" not found, installing..."
    sudo apt-get install -y coreutils
fi

SCRIPT_DIR=$(dirname "$(realpath "$0")")
PARENT_DIR=$(dirname "$SCRIPT_DIR")

cd "$SCRIPT_DIR"

echo "Extracting images to their own directory..."
./post-process/extract_images.sh

echo "Successfully extracted images to their own directory."
