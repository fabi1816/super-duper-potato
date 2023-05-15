#!/bin/bash

# Go to home for the user
pushd $HOME

# Activate the virtual environment if not already activated
if [[ ! -v VIRTUAL_ENV ]]
then
    echo Activate Python virtual environment
    source .venv/bin/activate
fi

# Deploy sphinx documentation
echo TODO: deploy docs

# Deploy static files
echo TODO: Deploy static files
pushd potato/app/
echo python manage.py collectstatic --no-input --clear --settings 'potatosite.settings.prod_settings'
popd

echo config nginx

# Deactivate the virtual environment if not already deactivated
if [[ -v VIRTUAL_ENV ]]
then
    echo De-activate Python virtual environment
    deactivate
fi

# Leave home
popd
