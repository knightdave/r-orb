#!/usr/bin/bash

TestCoverage() {
    R -e 'install::packages("covr")'
    R -e 'covr::codecov(token = "")'  #TODO Add variable
}

if [[ "$_" == "$0" ]]; then
    TestCoverage
fi

