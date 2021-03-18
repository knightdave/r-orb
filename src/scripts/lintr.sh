#!/usr/bin/bash

Lint() {
    R -e 'install::packages("lintr")'
    R -e 'quit(save = "no", status = length(lintr::lint_package(".")))'
}

if [[ "$_" == "$0" ]]; then
    Lint
fi
