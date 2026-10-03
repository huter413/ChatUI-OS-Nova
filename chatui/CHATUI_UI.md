# ChatUI Nova interface

The ROM target now explicitly includes a real Android UI integration layer.

## Included in the build target
- ChatUI OS / ChatUI Nova branding for SystemUI and Settings.
- Dark default visual theme.
- ChatUI Nova default wallpaper resource.
- Android Settings surfaces remain available for permissions, apps, notifications, display, sound, battery and security.
- The standard LineageOS/AOSP keyboard stack is retained and can be configured from Settings > System > Keyboard.
- Android's browser intent system remains available; proprietary Google Chrome is not redistributed in this public repository. A licensed Chrome/GMS package must be supplied separately if required.

The build script installs this overlay into the synced Android source tree before the product build.
