#!/bin/bash

# Go to home for ec2-user and activate the python venv
pushd $HOME
source .venv/bin/activate

# Load the secrets, not usually necesary
source POTATO_SECRETS

# Install all dependencies
echo pip install -r potato/requirements.txt

# Deactivate the python venv and leave the ec2-user's home
deactivate
popd
