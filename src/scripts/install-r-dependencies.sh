#!/usr/bin/bash

InstallRDeps() {
    R -e 'install::packages("renv")'
    R -e 'renv::restore()'
}


if [[ "$_" == "$0" ]]; then
    InstallRDeps
fi
