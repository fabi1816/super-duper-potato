#!/bin/bash

# TODO: Extract all common parts to a helper/base script

# Go to home for the user
pushd $HOME

# Activate the virtual environment if not already activated
if [[ ! -v VIRTUAL_ENV ]]
then
    echo Activate Python virtual environment
    source .venv/bin/activate
fi

# TODO: Deploy sphinx documentation
echo TODO: deploy docs

echo Deploy static files
pushd potato/app/
python manage.py collectstatic --no-input --clear --settings 'potatosite.settings.prod_settings'
popd

# Deactivate the virtual environment if not already deactivated
if [[ -v VIRTUAL_ENV ]]
then
    echo De-activate Python virtual environment
    deactivate
fi

# Leave home
popd
