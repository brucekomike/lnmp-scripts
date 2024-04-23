#!/bin/bash

# proxy conf for specific network environments
# please use 
#
# -R 12321:127.0.0.1:7890
#
# in your ssh command
function set_proxy(){
    export ProIP="http://127.0.0.1:12321"
    export http_proxy=$"$ProIP"
    export https_proxy=$"$ProIP"
    cp ./usr/share/apt/apt.conf.d/99-proxy.conf /etc/apt/apt.conf.d/
}

# uncomment this if you need proxy
#set_proxy

# domain config
# please change this
export DOMAIN=example.com
export Working_DIR=$(pwd)
# cloudflare cert setting
export dns_cloudflare_email=email@example.com
export dns_cloudflare_api_key=yourapikey
