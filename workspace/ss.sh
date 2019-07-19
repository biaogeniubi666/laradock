#! /bin/bash

#---------------------容器国外代理下载-------------------------------#
python3 /root/get-pip.py
pip install genpac
genpac --proxy="SOCKS5 10.0.75.1:2288"
--gfwlist-proxy="SOCKS5 10.0.75.1:2288" -o autoproxy.pac \
--gfwlist-url="https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt"
echo "export http_proxy=http://10.0.75.1:2288; \
export https_proxy=http://10.0.75.1:2288; \
export ftp_proxy=http://10.0.75.1:2288" >> /etc/profile
. /etc/profile