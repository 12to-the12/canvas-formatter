#!/bin/bash

PYTHON=./venv/bin/python
pbpaste | ./venv/bin/python ./src/main.py | pandoc | pbcopy
