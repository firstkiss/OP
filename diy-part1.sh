#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo '下载adguardhome'
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/AdGuardHome/files/etc files/etc
echo '下载主题'
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-argon_new package/luci-theme-argon_new
echo '下载ServerChan'
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
