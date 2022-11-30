#!/bin/sh
# A simplified form of the upstream autogen.sh
set -e
gtkdocize --docdir gtkdoc/
autoreconf --force --install --symlink
