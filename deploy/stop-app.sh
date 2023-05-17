#!/bin/bash

# No need to stop the Nginx server we'll just reload its configuration
EXISTS=$(ps -ef | pgrep gunicorn)

echo "Does Gunicorn exists? -> $EXISTS"

# Stop Gunicorn if it is running
if [[ $EXISTS ]]
then
    echo "Kill gunicorn"
    killall gunicorn
else
    echo "There is NO gunicorn to kill"
fi
