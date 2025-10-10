ls -la

pwd

ls
rm -rf ../feeds/packages/net/adguardhome
    
rm -rf ../feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 25.x ../feeds/packages/lang/golang


git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom ../package/luci-theme-infinityfreedom
git clone https://github.com/lwb1978/openwrt-gecoosac ../package/openwrt-gecoosac
git clone https://github.com/zzsj0928/luci-app-pushbot ../package/luci-app-pushbot

git clone https://github.com/GruntFish/OP-Packages ../package/OP-Packages
git clone https://github.com/sirpdboy/luci-app-lucky ../package/luci-app-lucky
git clone https://github.com/sirpdboy/luci-app-watchdog ../package/luci-app-watchdog

#git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git pw-dependencies
#git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git && mv openwrt-passwall/luci-app-passwall ../ && rm -rf openwrt-passwall
#git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git && mv openwrt-passwall2/luci-app-passwall2 ../ && rm -rf openwrt-passwall2
