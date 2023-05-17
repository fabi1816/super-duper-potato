#!/bin/bash

echo

pushd $HOME

echo Delete previous backup
sudo rm -rfv old-potato

echo Backup current
sudo mv -v potato/ old-potato/

popd
