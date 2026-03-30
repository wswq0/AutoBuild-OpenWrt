#!/bin/bash
#===============================================


# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#OpenAppFilter   
#git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter    


#vlmcsd
git clone https://github.com/mchome/luci-app-vlmcsd.git package/vlmcsd

#homeproxy
git clone https://github.com/immortalwrt/homeproxy.git package/homeproxy

#mosdns
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
