#!/bin/bash

if ! command -v realpath &>/dev/null; then
    echo "Package \"coreutils\" not found, installing..."
    sudo apt-get install -y coreutils
fi

SCRIPT_DIR=$(dirname "$(realpath "$0")")
cd "$SCRIPT_DIR"

# Check if Python is installed
if ! python3 --version &>/dev/null; then
    echo "Python is not installed or not added to PATH."
    echo "Please install Python and ensure it's available in the PATH environment."
    read -p "Press enter to continue..."
    exit 1
fi

# Create dependencies directory if it doesn't exist
if [ ! -d "dependencies" ]; then
    echo "Creating 'dependencies' directory..."
    mkdir dependencies
fi

cd dependencies

# Create a virtual environment inside the dependencies directory
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo "Virtual environment created successfully."
fi

# Activate the virtual environment and install pip & markitdown
source venv/bin/activate
pip install --upgrade pip

if [ ! -d "markitdown" ]; then
    git clone https://github.com/microsoft/markitdown.git
fi

cd markitdown
pip install -e "packages/markitdown[all]"

echo "Successfully installed dependencies."
