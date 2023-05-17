#!/bin/bash

echo 
echo "** Is Gunicorn running? **"
ps -ef | grep gunicorn

echo 
echo "** How is Nginx? **"
sudo systemctl status nginx

echo 
echo Check the gunicorn logs
tail /var/log/gunicorn/error.log

echo 
echo Check the nginx logs
sudo tail /var/log/nginx/error.log
