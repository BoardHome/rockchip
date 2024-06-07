#!/bin/bash

CMD=`realpath $BASH_SOURCE`
CUR_DIR=`dirname $CMD`

source $CUR_DIR/firefly-rk3568-ubuntu.mk

export RK_UBOOT_DEFCONFIG=rk3568
# Kernel defconfig fragment
export RK_KERNEL_DEFCONFIG_FRAGMENT="$RK_KERNEL_DEFCONFIG_FRAGMENT rk356x_amp.config"
# Uboot_defconfig_fragment
export RK_UBOOT_DEFCONFIG_FRAGMENT=rk-amp.config

export FF_EXTBOOT=false
# Kernel dts
export RK_KERNEL_DTS=rk3568-firefly-aioj-amp
# PRODUCT MODEL
export RK_PRODUCT_MODEL=AIO_3568J

