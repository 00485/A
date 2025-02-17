#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-op2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#=================================================
sed -i "s/192.168.1.1/10.0.0.2/" package/base-files/files/bin/config_generate



sed -i "s/(\(luciversion || ''\))/(\1) + (' \/ $WRT_REPO-$WRT_DATE') @ KING /g" $(find ./feeds/luci/modules/luci-mod-status/ -type f -name "10_system.js")