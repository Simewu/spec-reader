#!/bin/bash

if ! command -v realpath &>/dev/null; then
    echo "Package \"coreutils\" not found, installing..."
    sudo apt-get install -y coreutils
fi

SCRIPT_DIR=$(dirname "$(realpath "$0")")
cd "$SCRIPT_DIR"

# Check if Python is installed
REQUIRED_PYTHON_VERSION="3.10.0"
if ! python3 --version &>/dev/null; then
    echo "Python is not installed. Installing Python 3.10..."
    sudo apt update
    sudo apt install -y software-properties-common
    sudo add-apt-repository -y ppa:deadsnakes/ppa
    sudo apt update
    sudo apt install -y python3.10 python3.10-venv python3.10-distutils
    sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
else
    PYTHON_VERSION=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:3])))')
    if [ "$(printf '%s\n' "$REQUIRED_PYTHON_VERSION" "$PYTHON_VERSION" | sort -V | head -n1)" != "$REQUIRED_PYTHON_VERSION" ]; then
        echo "Python version $PYTHON_VERSION is less than $REQUIRED_PYTHON_VERSION. Installing Python 3.10..."
        sudo apt update
        sudo apt install -y software-properties-common
        sudo add-apt-repository -y ppa:deadsnakes/ppa
        sudo apt update
        sudo apt install -y python3.10 python3.10-venv python3.10-distutils
        sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
    fi
fi

# Create dependencies directory if it doesn't exist
if [ ! -d "dependencies" ]; then
    echo "Creating 'dependencies' directory..."
    mkdir dependencies
fi

cd dependencies

# Create a virtual environment inside the dependencies directory
if [ ! -f "venv/bin/activate" ]; then
    sudo rm -rf venv
    python3 -m venv venv
    echo "Virtual environment created successfully."

    # Make pip available in the virtual environment
    if [ ! -f "venv/bin/pip" ]; then
        python3 -m ensurepip --upgrade
        venv/bin/python -m pip install --upgrade pip
    fi
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
