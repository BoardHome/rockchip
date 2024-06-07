##################################################
#                                               #
#             AMP CONFIGS                       #
#                                               #
##################################################
# AMP Core Numbers
export RK_AMP_CORE_NUMS=4

export SHMEM_BASE=0x07800000
export SHMEM_SIZE=0x00400000

# Example of memory resource partitioning for Linux + RTT
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
export RK_AMP_CORE3_SYSTEM=rtthread
# RK AMP FIT its
export RK_AMP_FIT_ITS=rk3568_amp_linux_rtt.its
