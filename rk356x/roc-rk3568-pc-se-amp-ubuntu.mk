#!/bin/bash

CMD=`realpath $BASH_SOURCE`
CUR_DIR=`dirname $CMD`

source $CUR_DIR/roc-rk3568-pc-se-ubuntu.mk
source $CUR_DIR/firefly-rk3568-amp.mk
source $CUR_DIR/firefly-rk3568-linux-rtt.mk

# parameter for GPT table
export RK_PARAMETER=parameter-amp-ubuntu-fit.txt
# Kernel defconfig fragment
export RK_KERNEL_DEFCONFIG_FRAGMENT="$RK_KERNEL_DEFCONFIG_FRAGMENT rk356x_amp.config"
# Uboot_defconfig_fragment
export RK_UBOOT_DEFCONFIG_FRAGMENT=rk-amp.config

export FF_EXTBOOT=false
# Kernel dts
export RK_KERNEL_DTS=rk3568-firefly-roc-pc-se-amp

