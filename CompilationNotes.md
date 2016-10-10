# CM/AOSP Compilation notes

This file is to keep track of compilation strategies that I use. This would include; switching compilers, 
adding FLAGS to the build, enabling ODEX'ing a ROM, etc... 

I'm adding this file to keep track of these types of changes, that are not worth diff'ing, but should be kept track of.

# Odexing Roms

I prefer to odex my AOSP/CM roms. It's easy to do, add;

# ODEX

WITH_DEXPREOPT := true

to ../BoardConfig.mk (ie: your product's BoardConfig.mk). 

Documentation; https://source.android.com/devices/tech/dalvik/configure.html

# Linaro Toolchain (gcc-5.2.1)

..todo
