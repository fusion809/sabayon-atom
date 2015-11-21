# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"


inherit eutils libtool

DESCRIPTION="Moksha module to show the minimize all windows and show the desktop"
LICENSE="BSD-2"
SRC_URI="https://github.com/JeffHoogland/moksha-modules-extra/archive/master.tar.gz"
RESTRICT="mirror"
KEYWORDS="~amd64 ~arm ~x86"
SLOT="0"

RDEPEND="x11-wm/moksha"
DEPEND="${RDEPEND}"

S=${WORKDIR}/moksha-modules-extra-master/deskshow

src_configure() {
  pushd $S
  ./autogen.sh --prefix=/usr
  popd
}

src_compile() {
  pushd $S
	V=1 emake || die
  popd
}
