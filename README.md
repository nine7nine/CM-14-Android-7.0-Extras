# CM-14-Android-7.0-Patchwork

This repository conatins patchwork that I use with Cyanogenmod 14 / Nougat. Most of the Android userspace
portions are derived from CopperheadOS - Features, such as; exec/fork spawning model, random mac address and
other hardening / security focused functionality.

Each folder name matches their corresponding folder in AOSP tree, where the patches are to be applied.

however, there are a couple of noteable exceptions; 

# PrivacygaurdXposed 

A partial merge of AppOppsXposed into Cyanogenmod (It works very similarily to the xposed plugin, allowing the 
user to modify system app permission and exposing permissions that would normally be hidden. It's located here; 

package_apps_settings/app_settings_privacyguard_xposed_N.patch

# android_kernel_samsung_klte

This folder contains patches for klte. These include;

* performance optimizations
* upstream backports
* seccomp_filter/bpf support (from chromiumOS)
* randomized mac address support (from CopperheadOS)
* Yama Stacking support (backported, allows blocking ptrace usage)

Currently, I am working on upstreaming the seccomp_filter support. However, in the meantime, if you want the seccomp_filter 
support; you must copy all of the patches from within the ./seccomp-patches folder into the root directory of the klte kernel sources, then run; "git am *.patch" 

To apply all of the patches found within the /patches folder; you must copy the entire /patches folder and patchkernel.sh script into the root directory of the klte kernel sources, then run "./patchkernel.sh".

NOTE: They should probably be applied in this order.

...For applying any of the other patchsets, I would review them - as I won't be giving any support on using them. So you should be familiar with patching AOSP, using "git am", "patch", "diff" and resolving merging conflicts, as the Cyamogenmod and AOSP source trees are moving targets and can break patches at any time.
