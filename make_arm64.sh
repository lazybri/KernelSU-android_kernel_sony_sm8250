#! /bin/bash
export ARCH=arm64
export SUBARCH=arm64

make O=out pdx203_defconfig
PATH="/home/zsyizh/cbl17/bin:$PATH" \
make -j$(nproc) O=out \
        ARCH=arm64 \
        CC=clang \
        CLANG_TRIPLE=aarch64-linux-gun- \
        CROSS_COMPILE=/home/zsyizh/SM-8250/toolchain_aarch64_travis/google_gcc/aarch64-linux-android-4.9/bin/aarch64-linux-android- \
        | tee kernel.log