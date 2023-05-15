#!/bin/bash

# Go to home for the user
pushd $HOME

# We only load the secrets if they are not already loaded
if [[ ! -v SECRET_DJANGO_KEY ]]
then
        echo Load Django secrets
        source ~/POTATO_SECRETS
fi

# Activate the virtual environment if not active
if [[ ! -v VIRTUAL_ENV ]]
then
        echo Activate Python virtual environment
        source .venv/bin/activate
fi

# Install all dependencies
pip install -r potato/requirements.txt

# Deactivate the virtual environment if active
if [[ -v VIRTUAL_ENV ]]
then
    echo De-activate Python virtual environment
    deactivate
fi

# Leave home
popd
