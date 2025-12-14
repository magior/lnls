#!/bin/sh
set -e

if ! command -v autoreconf >/dev/null 2>&1; then
    echo "Missing 'autoreconf'. Please install Automake and Autoconf." >&2
    exit 1
fi

autoreconf --install --force "$@"
