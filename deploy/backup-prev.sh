#!/bin/bash

pushd $HOME

echo Delete previous backup
sudo rm -rfv old-potato

echo Backup current
sudo mv potato/ old-potato/

popd
