
export FF_AMP=true

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

##################################################
#                                               #
#           UBOOT CONFIGS                       #
#                                               #
##################################################
# Uboot path
export RK_UBOOT_PATH=u-boot
# Uboot defconfig
export RK_UBOOT_DEFCONFIG=firefly-rk3568
# Uboot parameters
export RK_UBOOT_PARAMETER=rkbin/RKBOOT/RK3568MINIALL.ini
# update spl
export RK_LOADER_UPDATE_SPL=
# Uboot trust
export RK_TRUST_INI_CONFIG=RK3568TRUST_CPU3.ini
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
export RK_AMP_CORE0_SYSTEM=
export RK_AMP_CORE1_SYSTEM=
export RK_AMP_CORE2_SYSTEM=
export RK_AMP_CORE3_SYSTEM=hal
# RK AMP FIT its
export RK_AMP_FIT_ITS=rk3568_amp_linux.its

