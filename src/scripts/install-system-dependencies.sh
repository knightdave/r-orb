#!/usr/bin/bash

InstallSysDeps() {
    R -e 'remotes::install_github("r-hub/sysreqs")'
    sysreqs=$(R -e "cat(sysreqs::sysreq_commands('DESCRIPTION'))")
    sudo -s eval "$sysreqs"
}

if [[ "$_" == "$0" ]]; then
    InstallSysDeps
fi
