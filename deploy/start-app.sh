#!/bin/bash

# Go to home for ec2-user and activate the python venv
pushd $HOME
source .venv/bin/activate

# Start Gunicorn from the root of the Django app
pushd potato/app/
gunicorn -c $HOME/config/gunicorn/dev.py --env DJANGO_SETTINGS_MODULE=potatosite.settings.prod_settings
popd

# TODO: Start the Nginx server
echo Start nginx

# Deactivate the python venv and leave the ec2-user's home
deactivate
popd
