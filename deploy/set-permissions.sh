#!/bin/bash

pushd $HOME

echo Change the owner of all code files to ec2-user
sudo chown ec2-user -cR ./potato

popd
