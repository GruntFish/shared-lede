#!/usr/bin/env bash

pwd


# download base code
CODE_DIR=_firmware_code
#CODE_URL=https://github.com/GruntFish/lede.git
#CODE_BRANCH=master
CODE_URL=https://github.com/GruntFish/immortalwrt-18.06-mtkhnat.git
CODE_BRANCH=master
SWITCH_LATEST_TAG=false
git clone --single-branch -b $CODE_BRANCH $CODE_URL $CODE_DIR
if $SWITCH_LATEST_TAG; then
    cd $CODE_DIR
    LATEST_TAG_HASH=$(git rev-list --tags --max-count=1)
    if [ -z "$LATEST_TAG_HASH" ]; then
        echo "No tag to switch, keep the latest commit"
    else
        git checkout $LATEST_TAG_HASH
        LATEST_TAG=$(git describe --tags $LATEST_TAG_HASH)
        echo "The code has been switched to the latest stable version $LATEST_TAG"
    fi
    cd ..
fi
mv ./$CODE_DIR/* ./
