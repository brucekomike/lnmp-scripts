#!/bin/bash

# proxy conf for specific network environments
export http_proxy=http://127.0.0.1:12321
export https_proxy=http://127.0.0.1:12321
cp ./usr/share/apt/apt.conf.d/99-proxy.conf /etc/apt/apt.conf.d/

# domain config
export DOMAIN=example.com