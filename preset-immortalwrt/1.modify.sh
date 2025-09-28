#!/usr/bin/env bash

cp -af ./feeds/mtk_openwrt_feed/21.02/files/* .
cp -af ./feeds/mtk_openwrt_feed/tools .
for file in $(find ./feeds/mtk_openwrt_feed/21.02/patches-base -name "*.patch" | sort); do patch -f -p1 -i ${file}; done
for file in $(find ./feeds/mtk_openwrt_feed/21.02/patches-feeds -name "*.patch" | sort); do patch -f -p1 -i ${file}; done

# modify login IP
sed -i 's/192.168.1.1/192.168.10.254/g' package/base-files/files/bin/config_generate

#sed -i 's/luci-theme-bootstrap/luci-theme-argonv3/g' feeds/luci/collections/luci/Makefile
#sed -i 's/Bootstrap theme/Argonv3 theme/g' feeds/luci/collections/luci/Makefile
#sed -i 's/normal/dark/g' feeds/luci/applications/luci-app-argon-config/root/etc/config/argon

sed -i 's/luci-theme-bootstrap/luci-theme-infinityfreedom-ng/g' feeds/luci/collections/luci/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-infinityfreedom-ng/g' feeds/luci/collections/luci-nginx/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-infinityfreedom-ng/g' feeds/luci/collections/luci-ssl-nginx/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-infinityfreedom-ng/g' feeds/luci/collections/luci-light/Makefile
sed -i 's/Bootstrap theme/infinityfreedom theme/g' feeds/luci/collections/luci/Makefile


#sed -i 's/0x2B2/0x312/g' target/linux/ramips/patches-5.4/102-mt7621-fix-cpu-clk-add-clkdev.patch
sed -i 's/0x2B2/0x312/g' target/linux/ramips/patches-5.10/322-mt7621-fix-cpu-clk-add-clkdev.patch

# replace geodata source
#. $(dirname $0)/../extra-files/update-geodata.sh
