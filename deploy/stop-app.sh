#!/bin/bash

# Go to home for the user
pushd $HOME

# TODO: Stop the Nginx server
echo sudo systemctl stop nginx

# Stop Gunicorn
killall gunicorn

# Leave home
popd
