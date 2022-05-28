inherit chai-image

TSLIB = " \
    tslib \
    tslib-calibrate \
    tslib-conf \
    tslib-dev \
    tslib-tests \
"

IMAGE_FEATURES += "hwcodecs"

VIDEO_TOOLS = " \
    gstreamer1.0 \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    gst-player \
    gstreamer1.0-meta-base \
    gst-examples \
    gstreamer1.0-rtsp-server \
    bad-apple \
"

IMAGE_INSTALL:append = " \
    alsa-utils \
    i2c-tools \
    htop \
    ${TSLIB} \
    ${VIDEO_TOOLS} \
    x-window-example \
"

IMAGE_FEATURES += " \
    splash \
    x11-base \
"

KERNEL_EXTRA_INSTALL += "\
    kernel-modules \
    sunxi-mali \
"
