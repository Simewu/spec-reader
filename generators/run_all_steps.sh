#!/bin/bash

set -e

if ! command -v realpath &>/dev/null; then
    echo "Package \"coreutils\" not found, installing..."
    sudo apt-get install -y coreutils
fi

SCRIPT_DIR=$(dirname "$(realpath "$0")")

cd "$SCRIPT_DIR"

echo "Step 1: Installing dependencies..."
./1_install_dependencies.sh

echo "Step 2: Generating markdown files..."
./2_run_markdown_generation.sh

echo "Step 3: Extracting images..."
./3_image_extraction.sh

echo "Step 4: Applying final formatting and converting to Jekyll..."
./4_final_formatting.sh

echo "Completed all steps successfully."
