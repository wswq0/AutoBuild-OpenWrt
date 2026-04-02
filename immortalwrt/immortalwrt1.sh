#!/bin/bash
#===============================================

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#OpenAppFilter    
#git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter    

#add luci-app-adguardhome
git clone --depth=1 \
  https://github.com/coolsnowwolf/luci.git \
  -b openwrt-25.12 \
  /tmp/luci

mkdir -p luci
cp -r /tmp/luci/applications/luci-app-adguardhome luci/
rm -rf /tmp/luci
