# GUnicorn **DEVELOPMENT** configuration

# Django WSGI application path in pattern MODULE_NAME:VARIABLE_NAME
wsgi_app = "potatosite.wsgi:application"

# The granularity of Error log outputs
loglevel = "debug"

# The number of worker processes for handling requests
workers = 2

# The socket to bind
bind = "0.0.0.0:8000"

# Restart workers when code changes (DEVELOPMENT ONLY!)
reload = True

# Write access and error info to /var/log
accesslog = errorlog = "/var/log/gunicorn/dev.log"

# Redirect stdout/stderr to log file
capture_output = True

# PID file so you can easily fetch process ID
pidfile = "/var/run/gunicorn/dev.pid"

# Daemonize the Gunicorn process (detach & enter background)
daemon = True

# Use the prod configuration for the Django application
raw_env = ["DJANGO_SETTINGS_MODULE=potatosite.settings.prod_settings"]
