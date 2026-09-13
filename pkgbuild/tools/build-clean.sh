#!/usr/bin/env bash

DIR_CURRENT="$(dirname "${BASH_SOURCE}")"
DIR_PKGBUILD="$(readlink -f "$DIR_CURRENT/..")"

rm -rfv \
    "$DIR_PKGBUILD/libfprint" \
    "$DIR_PKGBUILD/driver-verimark" \
    "$DIR_PKGBUILD/src" \
    "$DIR_PKGBUILD/pkg" \
    "$DIR_PKGBUILD/"*.zst \
    "$DIR_PKGBUILD/"*.log
