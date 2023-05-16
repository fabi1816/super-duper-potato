"""
Django PROD settings for potatosite project.

For more information on this file, see
https://docs.djangoproject.com/en/4.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/4.2/ref/settings/
"""

from .base_settings import *


# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

ALLOWED_HOSTS = [".legui.com.ar"]


# Database
# https://docs.djangoproject.com/en/4.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': environ['DB_NAME'],
        'HOST': environ['DB_HOST'],
        'PORT': environ['DB_PORT'],
        'USER': environ['DB_USER'],
        'PASSWORD': environ['DB_PASS'],
        'TEST': {
            'ENGINE': 'django.db.backends.sqlite3',
            'NAME': None,  # "None" means that it will use an in-memory db
        },
    }
}


# Static files
# https://docs.djangoproject.com/en/4.2/ref/contrib/staticfiles

# Collect static files into this directory
STATIC_ROOT = "/var/www/legui.com.ar/static/"

# Additional static files outside the installed apps
# STATICFILES_DIRS = []


# Enable extra-security

# HSTS
SECURE_HSTS_SECONDS = 2592000  # In seconds, one month
SECURE_HSTS_PRELOAD = True
SECURE_HSTS_INCLUDE_SUBDOMAINS = True
SECURE_PROXY_SSL_HEADER = ("HTTP_X_FORWARDED_PROTO", "https")

# To protect user's privacy
SECURE_REFERRER_POLICY = "strict-origin-when-cross-origin"

# Adds content security policy to block loading resources from unauthorized sources
# Check how to allow sources in https://django-csp.readthedocs.io/en/latest/configuration.html
MIDDLEWARE += ["csp.middleware.CSPMiddleware"]

# Secure cookies
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True

# Security checks that are not needed
SILENCED_SYSTEM_CHECKS = [
    "security.W008",  # SECURE_SSL_REDIRECT: The redirect is done by Nginx
]
