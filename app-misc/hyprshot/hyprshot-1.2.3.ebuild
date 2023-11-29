# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A utility to easily take screenshots in Hyprland using your mouse"
HOMEPAGE="https://github.com/Gustash/Hyprshot"
SRC_URI="https://github.com/Gustash/Hyprshot/archive/${PV}.tar.gz -> Hyprshot-${PV}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="wayland"

DEPEND="app-shells/bash
app-misc/jq
gui-apps/grim
gui-apps/slurp
gui-apps/wl-clipboard
x11-libs/libnotify"
RDEPEND="${DEPEND}"

S="${WORKDIR}/Hyprshot-${PV}"

src_install() {
    dobin hyprshot
    dodoc README.md
    insinto /usr/share/licenses/${PN}
    doins LICENSE
}
