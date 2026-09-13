#!/usr/bin/env bash

DIR_CURRENT="$(dirname "${BASH_SOURCE}")"
DIR_PKGBUILD="$(readlink -f "$DIR_CURRENT/..")"
DRI_BUILD="$DIR_PKGBUILD/src/libfprint/build"

LD_LIBRARY_PATH="$DRI_BUILD" \
    script -q -c \
        "$DRI_BUILD/examples/verify" \
            | tee >(sed -E 's/\x1B\[[0-9;]*[a-zA-Z]//g' > "$DIR_PKGBUILD/verify.log")
