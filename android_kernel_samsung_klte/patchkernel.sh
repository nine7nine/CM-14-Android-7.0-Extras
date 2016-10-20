#!/bin/bash

# Sources have already been patched with latest (samsung) L/M release DTS and Firmware files:
# * the diff on M alone is 600+ LOC, much easir to just include files, then patch for it.
#

echo "

Applying MISC KLTE/Galaxy S5 Kernel Patches

"

echo "0"
patch -Np1 < ./patches/qdsp6v2_mm_fixup.patch 
echo "1"
patch -Np1 < ./patches/4-random-mac.patch
#echo "2"
#patch -Np1 < ./patches/0014-lib-int_sqrt.c-optimize-square-root-algorithm.patch
echo "3"
patch -Np1 < ./patches/11-softirq_reduce_latencies.patch
echo "4"
patch -Np1 < ./patches/13-futex_cleanup_larger_table.patch   
echo "5"
patch -Np1 < ./patches/14-optimizedARM-rwsem.patch 
echo "6"
patch -Np1 < ./patches/17-nvidia_power_efficiently_tweak.patch
echo "8"
patch -Np1 < ./patches/18-rwsem_mutex_scaling.patch 
echo "9"
patch -Np1 < ./patches/20-usb_fastcharge.patch
echo "10"
patch -Np1 < ./patches/22-writeback_sync.patch
#echo "11"
#patch -Np1 < ./patches/23-neon_kernel_mode.patch
echo "12"
patch -Np1 < ./patches/26-Port_HTC_MDP_color_enhancement_feature.patch
echo "13"
patch -Np1 < ./patches/0097-ASoC-msm-Change-QOS-value-low-latency-path.patch
echo "14"
patch -Np1 < ./patches/0003-Neon-instead-of-softvfp-vfp.patch
echo "15"
patch -Np1 < ./patches/0002-Makefile-O3-snapdragon-linaro-optimizations.patch
echo "16"
patch -Np1 < ./patches/0582-Makefile-neon-vfpv4-instead-of-neon-only.patch
echo "17"
patch -Np1 < ./patches/0079-Revert-qualcomm-s-contributions-on-mutex.h.patch
echo "18"
patch -Np1 < ./patches/0080-ARM-7467-1-mutex-use-generic-xchg-based-implementati.patch
echo "19"
patch -Np1 < ./patches/0279-Makefile-fix-flags.patch
echo "20"
patch -Np1 < ./patches/0003-Add-dev-frandom-support.patch
echo "21"
patch -Np1 < ./patches/0004-lib-memcopy-use-glibc-version.patch
echo "22"
patch -Np1 < ./patches/0005-lib-string-use-glibc-version.patch
echo "23"
patch -Np1 < ./patches/765-stream-write-perf.patch
echo "24"
patch -Np1 < ./patches/766-bcmhd_reduce-wakelocks.patch
#echo "25"
#patch -Np1 < ./patches/compiler-gcc5.patch
#echo "26"
#patch -Np1 < ./patches/3.4-gcc5.patch
#echo "28"
#patch -Np1 < ./patches/more-3.4_gcc5x_fixups.patch
#echo "29"
#patch -Np1 < ./patches/lx314-backport_fstackprotector_strong.patch
echo "31"
patch -Np1 < ./patches/lx34LTS_google_fixups.patch
#echo "32"
#patch -Np1 < ./patches/XXX-section_mismatch_fixups_for_linaro-GCC-5.2.1.patch
echo "33"
patch -Np1 < ./patches/XXX-enable_my_extra_configs.patch

exit
