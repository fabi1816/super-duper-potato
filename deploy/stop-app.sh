#!/bin/bash

# Go to home for ec2-user and activate the python venv
pushd $HOME
source .venv/bin/activate

# TODO: Stop the Nginx server
echo Stop nginx

# Stop Gunicorn
killall gunicorn

# Deactivate the python venv and leave the ec2-user's home
deactivate
popd
