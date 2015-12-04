# Copyright 2015- Brenton Horne <brentonhorne77@gmail.com>

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

src_compile() {
  cd ${PN}-${PV}
  ./configure --prefix=/usr
  make
}

src_install() {
  cd ${PN}-${PV}

  make DESTDIR="/" install -j1

  install -Dm644 LICENSE /usr/share/licenses/${PN}/LICENSE
}
