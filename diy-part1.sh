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
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/kuling321/inode7.1_for_openwrt.git package/inode7.1
git clone https://github.com/liuqun/njit8021xclient.git package/njit8021xclient
sudo apt-get install libpcap-dev
git clone https://github.com/godspeed1989/xd-h3c.git package/xd-h3c

