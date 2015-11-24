# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 )
inherit flag-o-matic python-any-r1 eutils

DESCRIPTION="A hackable text editor for the 21st Century"
HOMEPAGE="https://atom.io"
SRC_URI="https://github.com/atom/atom/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	${PYTHON_DEPS}
	|| ( net-libs/nodejs[npm] net-libs/iojs[npm] )
	media-fonts/inconsolata
	gnome-base/gconf
	x11-libs/gtk+:2
	gnome-base/libgnome-keyring
	x11-libs/libnotify
	x11-libs/libXtst
	dev-libs/nss
	media-libs/alsa-lib
"
RDEPEND="${DEPEND}"

pkg_setup() {
	python-any-r1_pkg_setup

	npm config set python $PYTHON
}

src_compile(){
	./script/build --verbose --build-dir "${T}" || die "Failed to compile"
	"${T}/Atom/resources/app/apm/bin/apm" rebuild || die "Failed to rebuild native module"
	echo "python = $PYTHON" >> "${T}/Atom/resources/app/apm/.apmrc"
}

src_install(){
	script/grunt install --install-dir /usr
	# Fixes permissions
	fperms +x ${EPREFIX}/usr/share/${PN}/${PN}
	fperms +x ${EPREFIX}/usr/share/${PN}/libffmpegsumo.so
	fperms +x ${EPREFIX}/usr/share/${PN}/libgcrypt.so.11
	fperms +x ${EPREFIX}/usr/share/${PN}/libnotify.so.4
	fperms +x ${EPREFIX}/usr/share/${PN}/resources/app/atom.sh
	fperms +x ${EPREFIX}/usr/share/${PN}/resources/app/apm/bin/apm
	fperms +x ${EPREFIX}/usr/share/${PN}/resources/app/apm/bin/node
	fperms +x ${EPREFIX}/usr/share/${PN}/resources/app/apm/node_modules/npm/bin/node-gyp-bin/node-gyp
	# Symlinking to /usr/bin
	dosym ${EPREFIX}/usr/share/${PN}/resources/app/atom.sh /usr/bin/atom
	dosym ${EPREFIX}/usr/share/${PN}/resources/app/apm/bin/apm /usr/bin/apm
}
