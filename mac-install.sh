#!/bin/bash

echo "Installing the brew package manager.."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/bin


echo "Installing pandoc..."
brew install pandoc

echo "Building virtual environment..."
python -m venv venv

echo "Upgrading venv..."
./venv/bin/python -m pip install --upgrade pip

echo "Installing packages..."
./venv/bin/python -m pip install -r ./requirements.txt
