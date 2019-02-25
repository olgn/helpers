#!/bin/bash

python -m virtualenv --python=python3 .env && source .env/bin/activate && pip install torch torchvision

