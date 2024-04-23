#!/bin/bashb
# copy files
cp $Working_DIR/usr/share/nginx/sites-available/* /etc/nginx/sites-available/
# read config
old_domain="example.com"
new_domain=$DOMAIN

export nginx_dir="/etc/nginx/sites-available/*"
export nginx_enable_dir="/etc/nginx/sites-enabled/"
# replace example.con with your setting in 00-env.sh
for config_file in 
do
# use sed to replace old domain with new domain in nginx config file
sed -ir "/server_name/ { n; s/$old_name/$new_name/g; }" "$config_file"
ln -s $config_file $nginx_enable_dir
done