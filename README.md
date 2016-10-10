# CM-14-Android-7.0-Patchwork

This repository conatins patchwork that I add to Cyanogenmod 14 / Nougat. 

Each folder name matches the folder in AOSP tree, where the patches are to be applied;

* android_build  

1. optional_automated_build_cutom_key_signing_N.patch 
(more info here: https://github.com/nine7nine/android_build)

* packages_apps_settings  

1. 0-app_settings_random_mac-toggle_N.patch 
(A patch from CopperheadOS. Enables Mac Address Randomization. * Requires kernel support
and the corresponding 'platform_system_core' patch; 'random_mac_property.patch' (below). Original Patch; 
https://github.com/CopperheadOS/platform_packages_apps_Settings/commit/6152b998216b36a95260918adf519302ac847ed3 

2. app_settings_privacyguard_xposed_N.patch (
A patch that I wrote for Android M/N that makes PrivacyGaurd in CM behave more like AppOppsXosed for the Xposed framework.
Most of the code was adapted from the AppOppsXposed plugin source code, Found here; https://github.com/jclehner/AppOpsXposed
This modification enables all of the permissions that Cyanogenmod hides or doesn't allow you to change. 

NOTE: You can also modify system apps permissions, which can be very dangerous - great care must be taken, or you could 
break something! ... I mainly find this helpful to identify what permissions (system) apps may be using. However, there are cases where you may want to disable a particular permission, since not all system apps necessarily trusted by the user (I'm thinking of some Google applications here! lol). But only do this, *when I know that it won't cause issues OR I have made a backup and can revert settings, it it breaks something. 

* platform_system_core 

1. random_mac_property.patch 
(adds property for enabling Mac address randomization, requires kernel and settings app support). Original Patch;
https://github.com/CopperheadOS/platform_system_core/commit/53952b7938aa16b570f1ac709db2fffa46ff59e9

2. tighten_tcp-ip_settings.patch 
(tightens up tcp-ip settings) Original Patch;
https://github.com/CopperheadOS/platform_system_core/commit/3dc7911571e268d1b93d02d09847f30e74dc9246
