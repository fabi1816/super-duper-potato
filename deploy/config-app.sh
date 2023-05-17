#!/bin/bash

echo

pushd $HOME

echo Activate Python virtual environment
source .venv/bin/activate

# TODO: Deploy sphinx documentation
echo TODO: deploy docs

echo Load Django secrets
source ~/POTATO_SECRETS

echo Deploy static files
pushd potato/app/
python manage.py collectstatic --no-input --clear --settings 'potatosite.settings.prod_settings'
popd

echo De-activate Python virtual environment
deactivate

popd
