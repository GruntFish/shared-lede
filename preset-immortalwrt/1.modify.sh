#!/usr/bin/env bash

# modify login IP
sed -i 's/192.168.1.1/192.168.10.254/g' package/base-files/files/bin/config_generate


#sed -i 's/0x2B2/0x312/g' target/linux/ramips/patches-5.4/102-mt7621-fix-cpu-clk-add-clkdev.patch
sed -i 's/0x2B2/0x312/g' target/linux/ramips/patches-5.10/322-mt7621-fix-cpu-clk-add-clkdev.patch

# replace geodata source
#. $(dirname $0)/../extra-files/update-geodata.sh
