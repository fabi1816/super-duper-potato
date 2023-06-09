#!/bin/bash

echo

pushd $HOME

echo Activate Python virtual environment
source .venv/bin/activate

# Install all python dependencies
pip install -r potato/requirements.txt

echo De-activate Python virtual environment
deactivate

popd
