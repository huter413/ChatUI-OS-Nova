#!/usr/bin/env bash
set -euo pipefail

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G || true

source build/envsetup.sh

# Resolve dependencies declared by the device/common trees.
breakfast veux

export CHATUI_VERSION="${CHATUI_VERSION:-1.0}"
export CHATUI_CODENAME="${CHATUI_CODENAME:-Nova}"

lunch lineage_veux-userdebug
mka bacon -j"$(nproc)"

mkdir -p "$GITHUB_WORKSPACE/out-release"
find out/target/product/veux -maxdepth 1 -type f \
  \( -name '*.zip' -o -name '*.img' -o -name '*ota*.zip' \) \
  -exec cp -v {} "$GITHUB_WORKSPACE/out-release/" \
  ;
