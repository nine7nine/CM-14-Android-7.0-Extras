# CM/AOSP Compilation notes

This file is to keep track of compilation strategies that I use. This would include; switching compilers, 
adding FLAGS to the build, enabling ODEX'ing a ROM, etc... 

I'm adding this file to keep track of these types of changes, that are not worth diff'ing, but should be kept track of.

# Odexing Roms

I prefer to odex my AOSP/CM roms. It's easy to do, add;

WITH_DEXPREOPT := true

to ../BoardConfig.mk (ie: your product's BoardConfig.mk). 

Documentation; https://source.android.com/devices/tech/dalvik/configure.html

# optional / Automated Key-signing Builds

1) patch android_build to allow optional / automated key-signing to build
2) create keys folder + Generate keys
3) export SIGNING_KEY_DIR=/path/to/your/signing-keys

More/Detailed info here; https://github.com/nine7nine/android_build

# Linaro Toolchain (gcc-5.2.1)

..todo
