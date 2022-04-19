SUMMARY = "Mounts the additional partition of ubi:data to /root"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

do_install_append () {
    install -d ${D}/${sysconfdir}
    cat >> ${D}${sysconfdir}/fstab <<EOF
ubi0:data	/root		ubifs	defaults	0	0
EOF

}

inherit allarch
