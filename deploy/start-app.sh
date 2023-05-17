#!/bin/bash

pushd $HOME

if [[ -v SECRET_DJANGO_KEY ]]
then
    echo Load Django secrets
    source ~/POTATO_SECRETS
else
    echo Secrets already loaded
fi

echo Activate Python virtual environment
source .venv/bin/activate

echo Start Gunicorn server from the manage.py directory
pushd ~/potato/app/
gunicorn -c python:potatosite.settings.prod_gunicorn
popd

echo De-activate Python virtual environment
deactivate

echo Reload the Nginx server configuration
sudo systemctl reload nginx

popd
