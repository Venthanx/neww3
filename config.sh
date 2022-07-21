cd ~
apt update
apt install --y build-essential libtool gcc automake autoconf make
apt install -y wget

git https://github.com/yaoweibin/ngx_http_substitutions_filter_module.git
wget http://nginx.org/download/nginx-1.21.6.tar.gz
tar -zxvf nginx-1.21.6.tar.gz
cd nginx-1.21.6.tar.gz
./configure --sbin-path=/usr/local/nginx/sbin/nginx \
--conf-path=/etc/nginx/conf.d/nginx.conf \
--with-http_stub_status_module \
--with-http_ssl_module \
--with-http_v2_module \
--add-module=/root/ngx_http_substitutions_filter_module

make && make install
alias nginx=/usr/local/nginx/sbin/nginx
# nginx -V

#!/bin/bash
set -e
set -o pipefail

if [[ "${KEEP_DYNO_ALIVE,,}" == "true" ]];then
    nohup python keep_alive.py &
    echo "Heroku dyno will be kept alive"
else
    echo "Heroku FREE dyno will auto-sleep after 20 minutes"
fi

bin/start-nginx-solo