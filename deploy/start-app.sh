#!/bin/bash

# TODO: Extract all common parts to a helper/base script

# Go to home for the user
pushd $HOME

# Activate the virtual environment if not active
if [[ ! -v VIRTUAL_ENV ]]
then
        echo Activate Python virtual environment
        source .venv/bin/activate
fi

# Start Gunicorn
echo Start Gunicorn server from the manage.py directory
pushd ~/potato/app/
gunicorn -c python:potatosite.settings.prod_gunicorn
popd

# Reload the Nginx server to pick-up its new configuration
echo Reload the Nginx server configuration
sudo systemctl reload nginx

# Deactivate the virtual environment if active
if [[ -v VIRTUAL_ENV ]]
then
    echo De-activate Python virtual environment
    deactivate
fi

# Leave home
popd
