#!/bin/bash

# Cross Compile for ARM
export RK_ARM_CROSS_COMPILE_TOOL=gcc-linaro-6.3.1-2017.05-x86_64_arm-linux-gnueabihf
export RK_ARM_CROSS_COMPILE_GNU=arm-linux-gnueabihf-

# Cross Compile for ARM64
export RK_ARM64_CROSS_COMPILE_TOOL=gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu
export RK_ARM64_CROSS_COMPILE_GNU=aarch64-linux-gnu-

# Cross Compile for RTT
export RK_RTT_CROSS_COMPILE_TOOL=arm/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux
export RK_RTT_CROSS_COMPILE_GNU=arm-none-eabi-

# Cross Compile for HAL
export RK_HAL_CROSS_COMPILE_TOOL=arm/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux
export RK_HAL_CROSS_COMPILE_GNU=arm-none-eabi-

# Target arch
export RK_ARCH=arm64
# Uboot defconfig
export RK_UBOOT_DEFCONFIG=rk3568
# Uboot image format type: fit(flattened image tree)
export RK_UBOOT_FORMAT_TYPE=fit
# Kernel defconfig
export RK_KERNEL_DEFCONFIG=rockchip_linux_defconfig
# Kernel defconfig fragment
export RK_KERNEL_DEFCONFIG_FRAGMENT=rk356x_linux.config
# Kernel dts
export RK_KERNEL_DTS=rk3568-evb1-ddr4-v10-linux
# boot image type
export RK_BOOT_IMG=boot.img
# kernel image path
export RK_KERNEL_IMG=kernel/arch/arm64/boot/Image
# kernel image format type: fit(flattened image tree)
export RK_KERNEL_FIT_ITS=boot.its
# parameter for GPT table
export RK_PARAMETER=parameter-buildroot-fit.txt
# Buildroot config
export RK_CFG_BUILDROOT=rockchip_rk3568
# Recovery config
export RK_CFG_RECOVERY=rockchip_rk356x_recovery
# Recovery image format type: fit(flattened image tree)
export RK_RECOVERY_FIT_ITS=boot4recovery.its
# ramboot config
export RK_CFG_RAMBOOT=
# Pcba config
export RK_CFG_PCBA=
# Build jobs
export RK_JOBS=12
# target chip
export RK_TARGET_PRODUCT=rk356x
# Set rootfs type, including ext2 ext4 squashfs
export RK_ROOTFS_TYPE=ext4
# Set debian version (debian10: buster, debian11: bullseye)
export RK_DEBIAN_VERSION=bullseye
# yocto machine
export RK_YOCTO_MACHINE=rockchip-rk3568-evb
# rootfs image path
export RK_ROOTFS_IMG=rockdev/rootfs.${RK_ROOTFS_TYPE}
# Set ramboot image type
export RK_RAMBOOT_TYPE=
# Set oem partition type, including ext2 squashfs
export RK_OEM_FS_TYPE=ext2
# Set userdata partition type, including ext2, fat
export RK_USERDATA_FS_TYPE=ext2
#OEM config
export RK_OEM_DIR=oem_normal
# OEM build on buildroot
#export RK_OEM_BUILDIN_BUILDROOT=YES
#userdata config
export RK_USERDATA_DIR=userdata_normal
#misc image
export RK_MISC=wipe_all-misc.img
#choose enable distro module
export RK_DISTRO_MODULE=
# Define pre-build script for this board
export RK_BOARD_PRE_BUILD_SCRIPT=app-build.sh
# Define WiFi BT chip
# Compatible with Realtek and AP6XXX WiFi : RK_WIFIBT_CHIP=ALL_AP
# Compatible with Realtek and CYWXXX WiFi : RK_WIFIBT_CHIP=ALL_CY
# Single WiFi configuration: AP6256 or CYW43455: RK_WIFIBT_CHIP=AP6256
export RK_WIFIBT_CHIP=ALL_AP
# Define BT ttySX
export RK_WIFIBT_TTY=ttyS8

##################################################
#                                               #
#           UBOOT CONFIGS                       #
#                                               #
##################################################
# Uboot path
export RK_UBOOT_PATH=u-boot
# Uboot defconfig
export RK_UBOOT_DEFCONFIG=rk3568
# Uboot parameters
export RK_UBOOT_PARAMETER=rkbin/RKBOOT/RK3568MINIALL.ini
# Uboot output loader image
export RK_LOADER_IMAGE=rk356x_spl_loader_*.bin
# Uboot output boot image
export RK_UBOOT_IMAGE=uboot.img
# Uboot output trust image
export RK_TRUST_IMAGE=trust.img

##################################################
#                                               #
#             RTT CONFIGS                       #
#                                               #
##################################################
# RT-Thread path
export RK_RTTHREAD_TARGET=rk3568-32
# RT-Thread Cores default config
export RK_RTTHREAD0_DEFCONFIG=board/rk3568_evb1/uart4_defconfig
export RK_RTTHREAD1_DEFCONFIG=board/rk3568_evb1/uart2_defconfig
export RK_RTTHREAD2_DEFCONFIG=board/rk3568_evb1/uart4_defconfig
export RK_RTTHREAD3_DEFCONFIG=board/rk3568_evb1/uart4_defconfig

##################################################
#                                               #
#             HAL CONFIGS                       #
#                                               #
##################################################
# HAL path
export RK_HAL_TARGET=project/rk3568/GCC

##################################################
#                                               #
#             AMP CONFIGS                       #
#                                               #
##################################################
# AMP Core Numbers
export RK_AMP_CORE_NUMS=4

# CPU0 (512MB)
#export CPU0_MEM_BASE=0x12000000
#export CPU0_MEM_SIZE=0x20000000
# CPU1 (32MB)
#export CPU1_MEM_BASE=0x01800000
#export CPU1_MEM_SIZE=0x02000000
# CPU2 (32MB)
#export CPU2_MEM_BASE=0x03800000
#export CPU2_MEM_SIZE=0x02000000
# CPU3 (32MB)
#export CPU3_MEM_BASE=0x05800000
#export CPU3_MEM_SIZE=0x02000000
# CPU0~CPU3 SHARE (4MB)
export SHMEM_BASE=0x07800000
export SHMEM_SIZE=0x00400000

# Example of memory resource partitioning for Linux + HAL
# CPU0 (8MB)
export CPU0_MEM_BASE=0x03000000
export CPU0_MEM_SIZE=0x00800000
# CPU0 (8MB)
export CPU1_MEM_BASE=0x01800000
export CPU1_MEM_SIZE=0x00800000
# CPU0 (8MB)
export CPU2_MEM_BASE=0x02000000
export CPU2_MEM_SIZE=0x00800000
# CPU0 (8MB)
export CPU3_MEM_BASE=0x02800000
export CPU3_MEM_SIZE=0x00800000
# CPU0~CPU3 LINUX_RPMSG_SHARE (5MB)
export LINUX_RPMSG_BASE=0x07c00000
export LINUX_RPMSG_SIZE=0x00500000

# RK AMP Core Systems Config, support hal, rtthread, kernel
export RK_AMP_CORE0_SYSTEM=kernel
export RK_AMP_CORE1_SYSTEM=hal
export RK_AMP_CORE2_SYSTEM=hal
export RK_AMP_CORE3_SYSTEM=hal
# RK AMP FIT its
export RK_AMP_FIT_ITS=rk3568_amp_linux.its
