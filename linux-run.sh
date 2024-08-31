#!/bin/bash

PYTHON=./venv/bin/python
wl-paste | $PYTHON $PROJECTS_DIR/canvas-formatter/src/main.py | pandoc | wl-copy
