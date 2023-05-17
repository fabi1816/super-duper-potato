#!/bin/bash

echo

pushd $HOME

echo Activate Python virtual environment
source .venv/bin/activate

# Build docs
pushd potato/docs/
make html
popd

echo De-activate Python virtual environment
deactivate

popd
