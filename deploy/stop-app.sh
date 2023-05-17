#!/bin/bash

# No need to stop the Nginx server we'll just reload its configuration

# Stop Gunicorn if it is running
if [[ $(ps -ef | pgrep gunicorn) ]]
then
    killall gunicorn
fi
