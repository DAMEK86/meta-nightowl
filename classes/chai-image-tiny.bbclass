DESCRIPTION = "A striped console image for Lichee Pi Zero, Zero-Dock Boards"
LICENSE = "MIT"

IMAGE_LINGUAS = " "

inherit core-image

IMAGE_INSTALL += " \
  mtd-utils-ubifs \
  coreutils \
"

IMAGE_FEATURES += "ssh-server-dropbear"

#Always add cmake to sdk
TOOLCHAIN_HOST_TASK_append = " nativesdk-cmake"

IMAGE_ROOTFS_SIZE ?= "0"
IMAGE_ROOTFS_EXTRA_SPACE = "0"