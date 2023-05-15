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
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
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
