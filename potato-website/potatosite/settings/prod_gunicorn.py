"""Gunicorn *PRODUCTION* config file"""

import multiprocessing

# Django WSGI application path
wsgi_app = "potatosite.wsgi:application"

# The granularity of Error log outputs
# loglevel = "info"  # Default level

# The number of worker processes for handling requests
# is related to the available CPUs
workers = multiprocessing.cpu_count() * 2 + 1

# The socket to bind
bind = "0.0.0.0:8000"

# Write access and error info to /var/log
accesslog = "/var/log/gunicorn/access.log"
errorlog = "/var/log/gunicorn/error.log"

# Redirect stdout/stderr to log file
capture_output = True

# PID file so you can easily fetch process ID
pidfile = "/var/run/gunicorn/prod.pid"

# Daemonize the Gunicorn process (detach & enter background)
daemon = True

# Use the prod configuration for the Django application
raw_env = ["DJANGO_SETTINGS_MODULE=potatosite.settings.prod_settings"]
