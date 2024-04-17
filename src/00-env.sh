#!/bin/bash

# proxy conf for specific network environments
# please use 
#
# -R 12321:127.0.0.1:7890
#
# in your ssh command
function set_proxy(){
    export http_proxy=http://127.0.0.1:12321
    export https_proxy=http://127.0.0.1:12321
    cp ./usr/share/apt/apt.conf.d/99-proxy.conf /etc/apt/apt.conf.d/
}

# comment this if you don't need a proxy
set_proxy
# domain config
# please change this
export DOMAIN=example.com