#!/usr/bin/env bash
set -e

#################################################

#################################################

##################################################
# 要检查的包列表
# 会匹配 CONFIG_PACKAGE_ 前缀
##################################################
CHECK_PKGS=(
  luci-app-ttyd
  nano
  vlmcsd
  luci-app-oaf
  open-app-filter
  oaf
  htop
  mosdns
  luci-app-mosdns
  luci-app-homeproxy
  luci-app-adguardhome
  nikki
  luci-app-nikki
  cloudflared
  luci-app-cloudflared
  wireguard-tools
  kmod-wireguard
  luci-app-mwan3
  mwan3
)

echo "================================================="
echo " Package Status Check After defconfig"
echo "================================================="

for pkg in "${CHECK_PKGS[@]}"; do
  CONF="CONFIG_PACKAGE_${pkg}"

  if grep -q "^${CONF}=y" .config; then
    echo "✅ ${pkg}: =y"

  elif grep -q "^# ${CONF} is not set" .config; then
    echo "⚠️ ${pkg}: is not set"

  else
    echo "❌ ${pkg}: not found in .config"
  fi
done

echo "-------------------------------------------------"
echo " Package status check finished"
echo "================================================="
