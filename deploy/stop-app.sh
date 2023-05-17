#!/bin/bash

# No need to stop the Nginx server we'll just reload its configuration

# Stop Gunicorn
killall gunicorn
