#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.1.2/g' openwrt/package/base-files/files/bin/config_generate
#修改机器名称
#sed -i 's/OpenWrt/DotWho/g' openwrt/package/base-files/files/bin/config_generate
#修改默认主题
sed -i 's/config internal themes/config internal themes\n    option Argon  \"\/luci-static\/argon\"/g' openwrt/feeds/luci/modules/luci-base/root/etc/config/luci
#去除默认bootstrap主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' openwrt/feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
#删除默认密码
sed -i "/CYXluq4wUazHjmCDBCqXF/d" openwrt/package/lean/default-settings/files/zzz-default-settings
