#!/usr/bin/env bash

# modify login IP
sed -i 's/192.168.1.1/192.168.10.254/g' package/base-files/files/bin/config_generate

#sed -i 's/luci-theme-bootstrap/luci-theme-argonv3/g' feeds/luci/collections/luci/Makefile
#sed -i 's/Bootstrap theme/Argonv3 theme/g' feeds/luci/collections/luci/Makefile
#sed -i 's/normal/dark/g' feeds/luci/applications/luci-app-argon-config/root/etc/config/argon

sed -i 's/0x2B2/0x312/g' target/linux/ramips/patches-5.4/322-mt7621-fix-cpu-clk-add-clkdev.patch


# replace geodata source
#. $(dirname $0)/../extra-files/update-geodata.sh
