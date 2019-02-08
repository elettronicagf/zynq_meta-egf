SUMMARY = "Versions"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://hdf \
"

S = "${WORKDIR}"
FILESEXTRAPATHS_prepend := "${THISDIR}:"

do_install() {
  install -d ${D}${sysconfdir}
  install -m 0444 ${S}/hdf ${D}${sysconfdir}/version-hdf
}

FILES_${PN} += "${sysconfdir}/*"
