#!/bin/bash

echo

pushd $HOME

echo Activate Python virtual environment
source .venv/bin/activate

echo Load Django secrets
source ~/POTATO_SECRETS

echo Deploy sphinx documentation
rm -rf /var/www/legui.com.ar/docs/
cp -r potato/docs/build/html/ /var/www/legui.com.ar/docs/

echo Deploy static files
pushd potato/app/
python manage.py collectstatic --no-input --clear --settings 'potatosite.settings.prod_settings'
popd

echo De-activate Python virtual environment
deactivate

popd
