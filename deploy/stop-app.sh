#!/bin/bash

# Stop the Nginx server if it is running
if [[ -e /var/run/nginx.pid ]]
then
    echo Stop the Nginx server
    echo sudo systemctl stop nginx
fi

# Stop Gunicorn if it is running
if [[ -e /var/run/gunicorn/prod.pid ]]
then
    echo killall gunicorn
fi
