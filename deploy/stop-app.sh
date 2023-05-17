#!/bin/bash

echo

# NOTE: No need to stop the Nginx server we'll just reload its configuration

EXISTS=$(ps -ef | pgrep gunicorn)

# Stop Gunicorn if it is running
if [[ $EXISTS ]]
then
    echo "Kill running Gunicorn"
    killall gunicorn
else
    echo "There is NO Gunicorn running"
fi
