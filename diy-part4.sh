#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part4.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.

# Add packages
#git clone -b js https://github.com/gngpp/luci-theme-design package/luci-theme-design
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
#git clone https://github.com/messense/aliyundrive-webdav package/aliyundrive-webdav
#git clone https://github.com/sirpdboy/netspeedtest package/homebox

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Disable 7916 rai0 2.4G and raix0 6G
sed -i '$i\ifconfig rai0 down' package/base-files/files/etc/rc.local
sed -i '$i\ifconfig raix0 down' package/base-files/files/etc/rc.local
