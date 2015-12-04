# Copyright 2015- Brenton Horne <brentonhorne77@gmail.com>
# DESCRIPTION was taken from http://pkgbuild.com/git/aur-mirror.git/tree/mdocml/PKGBUILD

EAPI=5
DESCRIPTION="mandoc is a suite of tools compiling mdoc, the roff macro language and man manuals."
HOMEPAGE="http://mdocml.bsd.lv/"
RESTRICT="mirror"
LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
SRC_URI="http://mdocml.bsd.lv/snapshots/${PN}-${PV}.tar.gz -> ${PV}.tar.gz"
DEPEND="dev-db/sqlite"

src_prepare() {
  true
}

src_configure() {
  econf
}

src_compile() {
  emake
}

src_install() {
  emake -j1 DESTDIR=${D} install
  install -Dm644 LICENSE ${D}/usr/share/licenses/${PN}/LICENSE
}
