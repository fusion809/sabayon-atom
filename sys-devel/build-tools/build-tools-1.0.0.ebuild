# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Tools for building C and C++ programs"
LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"

RDEPEND="sys-devel/base-gcc
        app-arch/bzip2
        sys-devel/gcc[cxx]
        sys-libs/libstdc++-v3
        sys-devel/make
        <dev-lang/perl-5.22"
DEPEND=""
