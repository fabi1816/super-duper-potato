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

# If Gunicorn is not running, execute it
if [[ ! -e /var/run/gunicorn/dev.pid ]]
then
    echo Start Gunicorn server

    # Gunicorn must be started from the manage.py directory
    pushd ~/potato/app/

    echo gunicorn -c python:potatosite.settings.dev_gunicorn

    # Print the log
    sleep 1
    echo
    tail -n 7 /var/log/gunicorn/dev.log

    popd
fi

# Start the Nginx server if it is not running
if [[ ! -e /var/run/nginx.pid ]]
then
    echo Start the Nginx server
    echo sudo systemctl start nginx
fi

# Deactivate the virtual environment if active
if [[ -v VIRTUAL_ENV ]]
then
    echo De-activate Python virtual environment
    deactivate
fi

# Leave home
popd
