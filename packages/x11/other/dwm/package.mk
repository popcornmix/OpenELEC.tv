################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="dwm"
PKG_VERSION="6.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://dwm.suckless.org/"
PKG_URL="http://dl.suckless.org/dwm/dwm-${PKG_VERSION}.tar.gz"
PKG_DEPENDS="libX11"
PKG_BUILD_DEPENDS_TARGET="toolchain libX11"
PKG_PRIORITY="optional"
PKG_SECTION="x11/other"
PKG_SHORTDESC="dwm: dynamic window manager for X"
PKG_LONGDESC="dwm is a dynamic window manager for X. It manages windows in tiled, monocle and floating layouts. All of the layouts can be applied dynamically, optimising the environment for the application in use and the task performed"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  $MAKE LDFLAGS="$LDFLAGS -lX11" CFLAGS="$CFLAGS -std=c99" CC="$CC"
}

configure_target() {
  :
}
