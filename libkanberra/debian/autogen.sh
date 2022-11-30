#!/bin/sh
# A simplified form of the upstream autogen.sh
set -e
ctkdocize --docdir ctkdoc/
autoreconf --force --install --symlink
