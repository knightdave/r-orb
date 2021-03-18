#!/usr/bin/bash

BuildRPackage() {
    R CMD build .
    echo "export PKG=$(echo -- *.tar.gz)" >> "$BASH_ENV"
}

if [[ "$_" == "$0" ]]; then
    BuildRPackage
fi
