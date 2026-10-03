#!/usr/bin/env bash
set -euo pipefail
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G || true
source build/envsetup.sh
CHATUI_OVERLAY="$GITHUB_WORKSPACE/chatui/overlay"
if [ -d "$CHATUI_OVERLAY" ] && [ -f "device/xiaomi/veux/device.mk" ]; then
 rm -rf "$ANDROID_BUILD_TOP/.chatui-overlay"; cp -a "$CHATUI_OVERLAY" "$ANDROID_BUILD_TOP/.chatui-overlay"
 grep -qF "PRODUCT_PACKAGE_OVERLAYS += $(ANDROID_BUILD_TOP)/.chatui-overlay" device/xiaomi/veux/device.mk || printf "\n# ChatUI Nova UI overlay\nPRODUCT_PACKAGE_OVERLAYS += $(ANDROID_BUILD_TOP)/.chatui-overlay\n" >> device/xiaomi/veux/device.mk
fi
breakfast veux
export CHATUI_VERSION="${CHATUI_VERSION:-1.0}"
export CHATUI_CODENAME="${CHATUI_CODENAME:-Nova}"
lunch lineage_veux-userdebug
mka bacon -j"$(nproc)"
mkdir -p "$GITHUB_WORKSPACE/out-release"
find out/target/product/veux -maxdepth 1 -type f \( -name "*.zip" -o -name "*.img" -o -name "*ota*.zip" \) -exec cp -v {} "$GITHUB_WORKSPACE/out-release/" \;
