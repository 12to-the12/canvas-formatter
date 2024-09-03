#!/bin/bash

echo "Installing the brew package manager.."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing pandoc..."
brew install pandoc

echo "Building virtual environment..."
python3 -m venv venv

echo "Upgrading venv..."
./venv/bin/python3 -m pip install --upgrade pip

echo "Installing packages..."
./venv/bin/python3 -m pip install -r ./requirements.txt
