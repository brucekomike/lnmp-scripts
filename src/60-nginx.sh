#!/bin/bashb
# copy files
cp $Working_DIR/usr/share/nginx/sites-available/* /etc/nginx/sites-available/
# read config
old_domain="example.com"
new_domain=$DOMAIN

export nginx_dir="/etc/nginx/sites-available/*"
export nginx_enable_dir="/etc/nginx/sites-enabled/"
# replace example.con with your setting in 00-env.sh
for config_file in $nginx_dir
do
# use sed to replace old domain with new domain in nginx config file
export regex="s/\(server_name[^*]*\)$old_domain\([^;]*;\)/\1$new_domain\2/g"
sed -ir $regex $config_file
#ln -s $config_file $nginx_enable_dir
done