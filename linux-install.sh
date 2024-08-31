#!/bin/bash
echo "install pandoc, wl-clipboard, uv, and python3.12 to your PATH,"
echo "on Fedora that would be sudo dnf install pandoc wl-clipboard"
echo "I don't use Debian"

python -m venv venv
./venv/bin/python -m pip install --upgrade pip
./venv/bin/python -m pip install -r ./requirements.txt
