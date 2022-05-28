DESCRIPTION = "example video"
SECTION = "examples"
LICENSE = "CLOSED"

SRC_URI = "file://bad_apple_30.mp4"

S = "${WORKDIR}"

do_install() {
  install -d ${D}${datadir}
  install -m 0755 bad_apple_30.mp4 ${D}${datadir}
}

FILES:${PN} = "${datadir}"