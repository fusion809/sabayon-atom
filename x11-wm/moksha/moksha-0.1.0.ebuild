EAPI=5
inherit autotools-utils
EAPI=5

if [[ ${PV} = 9999 ]]; then
	inherit git-2
fi

DESCRIPTION="Moksha  window manager a fork of Enlightenment 17 with fixes"
HOMEPAGE="https://github.com/vivien/i3blocks"
if [[ ${PV} = 9999 ]]; then
	EGIT_REPO_URI="https://github.com/JeffHoogland/${PN}.git"
	EGIT_BOOTSTRAP=""
	KEYWORDS=""
else
	SRC_URI="https://github.com/JeffHoogland/${PN}/archive/v${PV}.tar.gz -> {PN}-${PV}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

SLOT="0"
IUSE="pam spell static-libs +udev ukit ${IUSE_E_MODULES}"
S=${WORKDIR}/${P%%_*}
# add normal Depends atoms. To Do... 
RDEPEND="
  >=dev-libs/efl-1.15.1
	>=dev-libs/e_dbus-1.7.10
	=media-plugins/evas_generic_loaders-1.15.0
	x11-libs/xcb-util-keysyms"
DEPEND="${RDEPEND}"

AUTOTOOLS_IN_SOURCE_BUILD=1

DOCS=(AUTHORS ChangeLog README "Read me.txt" TODO)

src_configure() {
        local myeconfargs=(
                $(use_enable debug)
                $(use_with qt4)
                $(use_enable threads multithreading)
                $(use_with tiff)
        )
        autotools-utils_src_configure
}
src_prepare() {
	# sed -i "s:1.7.10:1.7.9:g" configure.ac for Enlightenment however its a fork so unsure if nessisary.
	# sed -i "s:1.7.10:1.7.9:g" configure.ac
	epatch "${FILESDIR}"/quickstart.diff
}
src_compile() {
        autotools-utils_src_compile
        use doc && autotools-utils_src_compile docs
}

src_install() {
        use doc && HTML_DOCS=("${BUILD_DIR}/apidocs/html/")
        autotools-utils_src_install
        if use examples; then
                dobin "${BUILD_DIR}"/usr/bin/moksha/ \
                newins "${FILESDIR}"/gentoo-sysactions.conf sysactions.conf
                        || die 'dobin moksha failed'
        fi
}
