#!/bin/bash

echo "Installing the brew package manager.."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/bin


echo "Installing pandoc..."
brew install pandoc

echo "Building virtual environment..."
make


