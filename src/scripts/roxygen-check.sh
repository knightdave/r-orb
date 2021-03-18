#!/usr/bin/bash

RoxygenCheck() {
    R -e "roxygen2::roxygenize('.', roclets = c('rd', 'collate', 'namespace'))"
    if [ -z "$(git status -s)" ]
    then
        echo "manuals are not upto date with roxygen comments"
        echo "please rerun roxygen2::roxygenize('.', roclets = c('rd', 'collate', 'namespace'))"
        exit 1
    else
        echo "manuals are upto date with roxygen comments"
    fi
}

if [[ "$_" == "$0" ]]; then
    RoxygenCheck
fi
