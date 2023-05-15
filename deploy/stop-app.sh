#!/bin/bash

# TODO: Extract all common parts to a helper/base script

# Go to home for the user
pushd $HOME

# Stop the Nginx server if it is running
if [[ -e /var/run/nginx.pid ]]
then
    echo Stop the Nginx server
    sudo systemctl stop nginx
fi

# Stop Gunicorn
killall gunicorn

# Leave home
popd
