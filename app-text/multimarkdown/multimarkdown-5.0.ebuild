# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils vcs-snapshot

DESCRIPTION="MMD is a superset of the Markdown syntax (more syntax features & output formats)"
HOMEPAGE="http://fletcher.github.io/MultiMarkdown-5/"
SRC_URI="https://github.com/fletcher/MultiMarkdown-5/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"
LICENSE="|| ( GPL-2 MIT )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="shortcuts latex"

DEPEND=""
RDEPEND="latex? ( ${CATEGORY}/${PN}-latex-support )"

# custom variables
DEST_DIR_EXE="/usr/bin"
DEST_DIR_XSLT_TEMPL="/usr/share/${PN}/XSLT/"

# known file collision with sys-fs/mtools on file /usr/bin/mmd
# this is not fatal, the script is only a simple shortcut, so we just skip the
# file ... mmd2all  mmd2pdf are also excluded (todo re-test them)
SHORTCUTS_LIST="mmd2tex mmd2opml mmd2odf"

src_install()
{
	insinto ${DEST_DIR_EXE}
	einfo "Installing multimarkdown binary to ${DEST_DIR_EXE}/multimarkdown ..."
	dobin multimarkdown || die "Install failed"

	if use shortcuts ; then
		einfo "Installing shortcuts for ${PN}"
		exeinto ${DEST_DIR_EXE}
		for file in ${SHORTCUTS_LIST}; do
			# einfo "Installing ${file} to ${DEST_DIR_EXE}/${file} ..."
			doexe scripts/${file} || die "Installation of script ${file} failed!"
		done
	fi
}

pkg_postinst()
{
	elog ""
	elog "*** ${PN} was successfully installed. ***"
	elog "Type \"multimarkdown -h\" or \"multimarkdown file.txt\" to start using it."
	if use shortcuts; then
		elog "The following additional shortcuts were also installed:"
		elog "${SHORTCUTS_LIST}."
		elog "The shortcut \"mmd\" was not installed due to known file"
		elog "collision with sys-fs/mtools on file /usr/bin/mmd"
	fi
	elog ""
}

pkg_info()
{
	einfo "`${ROOT}${DEST_DIR_EXE}/multimarkdown -v`"
}
