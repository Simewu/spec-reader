#!/bin/bash

set -e

if ! command -v realpath &>/dev/null; then
    echo "Package \"coreutils\" not found, installing..."
    sudo apt-get install -y coreutils
fi

SCRIPT_DIR=$(dirname "$(realpath "$0")")
PARENT_DIR=$(dirname "$SCRIPT_DIR")
cd "$SCRIPT_DIR"

echo "Post-processing data to fix formatting..."
./post-process/fix_formatting.sh

echo "Combining all documents into one markdown file..."
./post-process/combine_to_single_file.sh

echo "Generating Jekyll format..."
./post-process/generate_jekyll_format.sh

echo
echo "OK."
