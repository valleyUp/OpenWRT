#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Disable default WIFI
sed -i 's/wireless.radio${devidx}.disabled=0/wireless.radio${devidx}.disabled=1/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/wireless\.radio\${devidx}/d' package/lean/default-settings/files/zzz-default-settings.sh
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/luci2/bin/config_generate
# Modify default theme
# sed -i 's/luci-theme-bootstrap/luci-theme-argone/g' feeds/luci/collections/luci-light/Makefile
# Enable ccache accelerate
echo "CONFIG_CCACHE=y" >> ./.config
