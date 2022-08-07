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

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate

# 安装Docker
#svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-app-docker package/luci-app-docker

#rm -rf ../../customfeeds/luci/collections/luci-lib-docker
#rm -rf ../../customfeeds/luci/applications/luci-app-docker
#rm -rf ../../customfeeds/luci/applications/luci-app-dockerman
#git clone --depth=1 https://github.com/lisaac/luci-app-dockerman
#git clone --depth=1 https://github.com/lisaac/luci-lib-docker


# 删除原来的argon
#rm -rf  feeds/luci/themes/luci-theme-argon

# 添加老竭力的argon主题
#git clone -b master https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# 修改默认主题为argon
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 添加cpu温度监控
git clone https://github.com/gSpotx2f/luci-app-temp-status.git package/luci-app-temp-status
