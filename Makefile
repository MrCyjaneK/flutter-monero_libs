MONERO_C_TAG=v0.18.3.3-RC10
LIBCPP_SHARED_SO_TAG=latest-RC1
LIBCPP_SHARED_SO_NDKVERSION=r17c
VERSION=018003003
RC=010

.PHONY: version
version:
	sed -i "s/^version: .*/version: 0.${VERSION}.$(RC)/" "pubspec.yaml"

libs: android/src/main/jniLibs/arm64-v8a/@coin@_libwallet2_api_c.so
.PHONY: android/src/main/jniLibs/arm64-v8a/@coin@_libwallet2_api_c.so
android/src/main/jniLibs/arm64-v8a/@coin@_libwallet2_api_c.so:
	wget -q https://static.mrcyjanek.net/monero_c/${MONERO_C_TAG}/${COIN}/aarch64-linux-android_libwallet2_api_c.so.xz -O android/src/main/jniLibs/arm64-v8a/${COIN}_libwallet2_api_c.so.xz
	unxz android/src/main/jniLibs/arm64-v8a/${COIN}_libwallet2_api_c.so.xz

libs: android/src/main/jniLibs/arm64-v8a/libc++_shared.so
.PHONY: android/src/main/jniLibs/arm64-v8a/libc++_shared.so
android/src/main/jniLibs/arm64-v8a/libc++_shared.so:
	wget -q https://git.mrcyjanek.net/mrcyjanek/libcpp_shared.so/releases/download/${LIBCPP_SHARED_SO_TAG}/${LIBCPP_SHARED_SO_NDKVERSION}_arm64-v8a_libc++_shared.so -O android/src/main/jniLibs/arm64-v8a/libc++_shared.so

libs: android/src/main/jniLibs/armeabi-v7a/@coin@_libwallet2_api_c.so
.PHONY: android/src/main/jniLibs/armeabi-v7a/@coin@_libwallet2_api_c.so
android/src/main/jniLibs/armeabi-v7a/@coin@_libwallet2_api_c.so:
	wget -q https://static.mrcyjanek.net/monero_c/${MONERO_C_TAG}/${COIN}/arm-linux-androideabi_libwallet2_api_c.so.xz -O android/src/main/jniLibs/armeabi-v7a/${COIN}_libwallet2_api_c.so.xz
	unxz android/src/main/jniLibs/armeabi-v7a/${COIN}_libwallet2_api_c.so.xz

libs: android/src/main/jniLibs/armeabi-v7a/libc++_shared.so
.PHONY: android/src/main/jniLibs/armeabi-v7a/libc++_shared.so
android/src/main/jniLibs/armeabi-v7a/libc++_shared.so:
	wget -q https://git.mrcyjanek.net/mrcyjanek/libcpp_shared.so/releases/download/${LIBCPP_SHARED_SO_TAG}/${LIBCPP_SHARED_SO_NDKVERSION}_armeabi-v7a_libc++_shared.so -O android/src/main/jniLibs/armeabi-v7a/libc++_shared.so

# libs: android/src/main/jniLibs/x86/@coin@_libwallet2_api_c.so
# .PHONY: android/src/main/jniLibs/x86/@coin@_libwallet2_api_c.so
# android/src/main/jniLibs/x86/@coin@_libwallet2_api_c.so:
# 	wget -q https://static.mrcyjanek.net/monero_c/${MONERO_C_TAG}/${COIN}/i686-linux-android_libwallet2_api_c.so.xz -O android/src/main/jniLibs/x86/${COIN}_libwallet2_api_c.so.xz
# 	unxz android/src/main/jniLibs/x86/${COIN}_libwallet2_api_c.so.xz

libs: android/src/main/jniLibs/x86/libc++_shared.so
.PHONY: android/src/main/jniLibs/x86/libc++_shared.so
android/src/main/jniLibs/x86/libc++_shared.so:
	wget -q https://git.mrcyjanek.net/mrcyjanek/libcpp_shared.so/releases/download/${LIBCPP_SHARED_SO_TAG}/${LIBCPP_SHARED_SO_NDKVERSION}_x86_libc++_shared.so -O android/src/main/jniLibs/x86/libc++_shared.so

libs: android/src/main/jniLibs/x86_64/@coin@_libwallet2_api_c.so
.PHONY: android/src/main/jniLibs/x86_64/@coin@_libwallet2_api_c.so
android/src/main/jniLibs/x86_64/@coin@_libwallet2_api_c.so:
	wget -q https://static.mrcyjanek.net/monero_c/${MONERO_C_TAG}/${COIN}/x86_64-linux-android_libwallet2_api_c.so.xz -O android/src/main/jniLibs/x86_64/${COIN}_libwallet2_api_c.so.xz
	unxz android/src/main/jniLibs/x86_64/${COIN}_libwallet2_api_c.so.xz

libs: android/src/main/jniLibs/x86_64/libc++_shared.so
.PHONY: android/src/main/jniLibs/x86_64/libc++_shared.so
android/src/main/jniLibs/x86_64/libc++_shared.so:
	wget -q https://git.mrcyjanek.net/mrcyjanek/libcpp_shared.so/releases/download/${LIBCPP_SHARED_SO_TAG}/${LIBCPP_SHARED_SO_NDKVERSION}_x86_64_libc++_shared.so -O android/src/main/jniLibs/x86_64/libc++_shared.so

clean:
	-rm android/src/main/jniLibs/x86_64/libc++_shared.so*
	-rm android/src/main/jniLibs/x86_64/*_libwallet2_api_c.so*
	-rm android/src/main/jniLibs/armeabi-v7a/libc++_shared.so*
	-rm android/src/main/jniLibs/armeabi-v7a/*_libwallet2_api_c.so*
	-rm android/src/main/jniLibs/x86/libc++_shared.so*
	-rm android/src/main/jniLibs/x86/*_libwallet2_api_c.so*
	-rm android/src/main/jniLibs/arm64-v8a/libc++_shared.so*
	-rm android/src/main/jniLibs/arm64-v8a/*_libwallet2_api_c.so*
