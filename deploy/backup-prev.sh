#!/bin/bash

pushd $HOME

echo Delete previous backup
rm -rfv old-potato

echo Backup current
mv potato/ old-potato/

popd
