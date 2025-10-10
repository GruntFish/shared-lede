

git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom ./package/luci-theme-infinityfreedom
git clone https://github.com/lwb1978/openwrt-gecoosac ./package/openwrt-gecoosac
git clone https://github.com/zzsj0928/luci-app-pushbot ./package/luci-app-pushbot

git clone https://github.com/GruntFish/OP-Packages ./package/OP-Packages
git clone https://github.com/sirpdboy/luci-app-lucky ./package/luci-app-lucky
git clone https://github.com/sirpdboy/luci-app-watchdog ./package/luci-app-watchdog

#git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git pw-dependencies
#git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git && mv openwrt-passwall/luci-app-passwall ./ && rm -rf openwrt-passwall
#git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git && mv openwrt-passwall2/luci-app-passwall2 ./ && rm -rf openwrt-passwall2


rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 25.x feeds/packages/lang/golang


# 迁移 AdGuardHome（带检查）
if [ -d "./package/OP-Packages/adguardhome" ]; then
    echo "迁移 AdGuardHome..."
    rm -rf ./feeds/packages/net/adguardhome
    mkdir -p ./feeds/packages/net/adguardhome
    mv ./package/OP-Packages/adguardhome/* ./feeds/packages/net/adguardhome/
    rm -rf ./package/OP-Packages/adguardhome
    echo "AdGuardHome 迁移完成"
else
    echo "警告: ./package/OP-Packages/adguardhome 不存在，跳过迁移"
fi

echo "所有操作完成！"
