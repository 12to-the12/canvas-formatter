#!/bin/bash

pbpaste | ./.venv/bin/python ./src/main.py | pandoc | pbcopy
