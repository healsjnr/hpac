#! /bin/bash 
unicorn -c config/unicorn.rb -D
sudo /etc/init.d/nginx start
