#!/bin/bashb
# copy files
cp ./usr/share/nginx/sites-availale/* /etc/nginx/sites-available/
# read config
old_domain="example.com"
new_domain=$DOMAIN

# replace example.con with your setting in 00-env.sh
for config_file in "/etc/nginx/sites-available"
# use sed to replace old domain with new domain in nginx config file
sed -i -r "s/(.*server_name\s+)([^.]*\.)?$old_domain/\1\2$new_domain/g" "$config_file"