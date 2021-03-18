#!/usr/bin/bash

InstallCurrentPackage() {
    R CMD INSTALL "${PKG}"
}

if [[ "$_" == "$0" ]]; then
    InstallCurrentPackage
fi
