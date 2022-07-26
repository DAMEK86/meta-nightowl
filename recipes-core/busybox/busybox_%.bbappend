FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:nightowl-tiny = " \
	    file://reboot.cfg \
           "
