Nginx
=====

A high-performance http server and reverse proxy

Configuration
-------------

The `Nginx` standard configuration is independent of all the sites that it hosts

Each hosted site has its own configuration file that `Nginx` reads
This file is in `/etc/nginx/conf.d/` and it's a file with a `*.conf` extension

What we are going to do is replace this file with a symlink to the site configuration file in the app directory
Will it work? there is only one way to find out... it seems like it does!
