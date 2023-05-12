#!/bin/bash

# Go to home for ec2-user and activate the python venv
pushd $HOME
source .venv/bin/activate

# Build docs
pushd potato/docs/
echo make html
popd

# Deactivate the python venv and leave the ec2-user's home
deactivate
popd
