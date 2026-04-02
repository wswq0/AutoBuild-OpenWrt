#!/bin/bash
#===============================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' $(pwd)/package/base-files/files/bin/config_generate
#
#
#
#



#add package
cat >> .config <<EOF
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_iperf3=y
CONFIG_PACKAGE_luci-app-vlmcsd=y
EOF
