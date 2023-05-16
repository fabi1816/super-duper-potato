#!/bin/bash

# No need to stop the Nginx server we'll just reload its configuration

# Stop Gunicorn if it is running
if [[ -e /var/run/gunicorn/prod.pid ]]
then
    killall gunicorn
fi
