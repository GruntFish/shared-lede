rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 25.x feeds/packages/lang/golang


rm -rf ./feeds/packages/net/adguardhome
mkdir -p ./feeds/packages/net/adguardhome
mv ./temp-op/adguardhome/* ./feeds/packages/net/adguardhome/
rm -rf ./temp-op
