#!/usr/bin/bash

ChackRPackage() {
    R CMD check --no-manual "${PKG}"
    mv "${CIRCLE_PROJECT_REPONAME}".Rcheck rpackage.Rcheck
    result=$(tail -1 rpackage.Rcheck/00check.log)
    echo "$result" | grep -q Status: || (echo "could not get Status line"; exit 1)
    case "$result" in
        *Error*) echo "errors in checks results"; exit 1 ;;
        *) echo "OK" ;;
    esac
}


if [[ "$_" == "$0" ]]; then
    ChackRPackage
fi
