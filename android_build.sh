export NDK=/home/jer/Projet_android/android-ndk-r5
export TOOLCHAIN=/home/jer/standalone-toolchain
export AOSP=/home/jer/cm7
export PRODUCT=vision
export PATH=$TOOLCHAIN/bin/:$PATH

export CC=arm-linux-androideabi-gcc
export CFLAGS="-march=armv7-a -mfloat-abi=softfp"
export LDFLAGS="-Wl,--fix-cortex-a8 -lsupc++"
export LIBS="$TOOLCHAIN/arm-linux-androideabi/lib/libstdc++.a"

#rm -rf $TOOLCHAIN
#$NDK/build/tools/make-standalone-toolchain.sh --platform=android-9 --install-dir=$TOOLCHAIN

./configure --host=arm-linux-androideabi --prefix=$AOSP/out/target/product/$PRODUCT/build --includedir=$AOSP/out/target/product/$PRODUCT/obj/include
make -j2
make install
