#!/bin/bash
#
# Copyright (c) 2020-2024 JE <https://gihub.com/JE668>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/JE668/Phicomm-K3-LEDE-Firmware-Lean
# File name: beta/diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

#1.'asus_dhd24' 2.'ac88u_20' 3.'69027'

echo '添加lwz322的K3屏幕插件'
rm -rf package/lean/luci-app-k3screenctrl
git clone https://github.com/JE668/luci-app-k3screenctrl.git package/lean/luci-app-k3screenctrl
echo '=========Add k3screen plug OK!========='

echo '替换lwz322的K3屏幕驱动插件'
rm -rf package/lean/k3screenctrl
git clone https://github.com/JE668/k3screenctrl_build.git package/lean/k3screenctrl/
echo '=========Replace k3screen drive plug OK!========='

echo '添加kenzok8 small-package'
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo '=========Add kenzok8 source OK!========='

echo '=========Add OpenClash source OK!========='



