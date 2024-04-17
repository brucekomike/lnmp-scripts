#!/bin/bash
function certbot-install(){
    snap install --classic certbot
    certbot --nginx
}
function certbot-cloudflare(){
    snap install --classic certbot
    sudo snap install certbot-dns-cloudflare
    mkdir /root/.secrets/
    touch /root/.secrets/cloudflare.ini
    echo "dns_cloudflare_email = ""$dns_cloudflare_email" >> /root/.secrets/cloudflare.ini
    echo "dns_cloudflare_api_key = ""$dns_cloudflare_api_key" >> /root/.secrets/cloudflare.ini
    sudo chmod 0700 /root/.secrets/
    sudo chmod 0400 /root/.secrets/cloudflare.ini
    sudo certbot certonly --dns-cloudflare --dns-cloudflare-credentials /root/.secrets/cloudflare.ini -d example.com,*.example.com --preferred-challenges dns-01
}

# unconmment this to generate cloudflare wildcard cert (not working yet)
#certbot-cloudflare

# unconmment if you need ssl certs
#certbot-install

