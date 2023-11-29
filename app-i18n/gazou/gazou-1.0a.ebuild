EAPI=7
inherit cmake

DESCRIPTION="A OCR for Japanese and Chinese Characters"
HOMEPAGE="https://github.com/metcalsr28/gazou_wayland"
SRC_URI="https://github.com/metcalsr28/gazou_wayland/archive/refs/tags/v1.0.0.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="wayland"

RDEPEND="
    app-text/tesseract
    media-libs/leptonica
    dev-qt/qtbase
    dev-qt/qtx11extras
"
DEPEND="${RDEPEND}
    dev-util/cmake
    virtual/pkgconfig
    dev-qt/qttools
"

S="${WORKDIR}/gazou_wayland-1.0.0"

src_configure() {
    local mycmakeargs=(
        -DGUI=OFF
    )
    cmake_src_configure
}
