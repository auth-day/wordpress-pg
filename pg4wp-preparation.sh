#!/bin/bash

## todo:
# 1. check on existings folders
# 2. pass secret values 
# ....
apt-get update 

apt-get install git -y

sleep 90
cd /var/www/html
git clone https://github.com/kevinoid/postgresql-for-wordpress.git 
cp postgresql-for-wordpress/pg4wp/db.php wp-content/db.php

mv postgresql-for-wordpress/pg4wp wp-content/pg4wp

cp /home/wp-config.php wp-config.php

exit 0

