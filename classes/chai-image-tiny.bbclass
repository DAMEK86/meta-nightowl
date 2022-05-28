DESCRIPTION = "A striped console image for Lichee Pi Zero, Zero-Dock Boards"
LICENSE = "MIT"

IMAGE_LINGUAS = " "

inherit core-image

IMAGE_INSTALL += " \
  mtd-utils \
  mtd-utils-ubifs \
"

IMAGE_FEATURES += "ssh-server-dropbear"

#Always add cmake to sdk
TOOLCHAIN_HOST_TASK:append = " nativesdk-cmake"