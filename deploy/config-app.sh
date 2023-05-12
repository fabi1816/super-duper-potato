#!/bin/bash

# Go to home for ec2-user and activate the python venv
pushd $HOME
source .venv/bin/activate

echo deploy docs

# Deploy static files
pushd potato/app/
echo python manage.py collectstatic --no-input --clear --settings 'potatosite.settings.prod_settings'
popd

echo config gunicorn
echo config nginx

# Deactivate the python venv and leave the ec2-user's home
deactivate
popd
