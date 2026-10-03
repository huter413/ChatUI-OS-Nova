# ChatUI OS Nova — release checklist

A release is final only when every item below is verified by CI or documented hardware testing.

- [ ] Source sync completes on Lineage 23.2.
- [ ] Device tree and all declared SM6375 dependencies resolve.
- [ ] Required vendor/proprietary blobs are available from a legally redistributable source or supplied separately.
- [ ] lineage_veux-userdebug configures successfully.
- [ ] ROM ZIP is produced.
- [ ] Boot/recovery/vendor_boot images required by the device are produced.
- [ ] SHA-256 checksums are generated.
- [ ] OTA metadata is generated for signed releases.
- [ ] ChatUI Nova branding is present.
- [ ] Themes/keyboard/emoji/font configuration is included in the release build.
- [ ] File-manager integration is included without bypassing Android security controls.
- [ ] Root-management integration is optional and does not weaken the default security posture.
- [ ] Release signing is performed with keys kept outside the public repository.
- [ ] A GitHub Actions run completes successfully.
- [ ] Only after the successful run is the build labeled final.
