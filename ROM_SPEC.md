# ChatUI OS — Nova

## Final product target
- ROM: ChatUI OS
- Device: POCO X4 Pro 5G (veux)
- Product branding: ChatUI Nova
- Architecture: ARM64 (arm64-v8a)
- Build type: userdebug for development builds; release builds must be signed separately.
- Base: LineageOS 23.2 source tree for the veux/SM6375 device family.

## Feature set
The release specification covers the complete OS surface: ChatUI SystemUI/launcher branding, dark UI, Themes, keyboard/emoji/font settings, file manager integration, OTA updater, recovery/fastboot compatibility, root-management integration, device-specific hardware support, performance/power settings, privacy/security controls, versioned OTA metadata, and reproducible GitHub Actions builds.

## Packaging rules
Google Mobile Services and other proprietary Google packages are not embedded in this public repository unless their redistribution license permits it. A release that contains GMS must use an appropriately licensed package source.

## Device security
The build must preserve the normal Android security model. Root access is optional and privileged; protected system partitions remain protected without root. Scoped-storage rules are not bypassed merely for convenience.

## Release definition
A version is called FINAL only after the GitHub Actions build completes successfully and produces the expected ROM artifacts. A source-only commit is not treated as a finished ROM release.
