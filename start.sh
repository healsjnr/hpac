#! /bin/bash 
unicorn -c config/unicorn.rb -D -E production
sudo /etc/init.d/nginx start
