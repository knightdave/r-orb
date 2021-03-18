#!/usr/bin/bash

BuildPKGdown() {
    R -e 'pkgdown::build_site(".", devel = FALSE)'
}

if [[ "$_" == "$0" ]]; then
    BuildPKGdown
fi
