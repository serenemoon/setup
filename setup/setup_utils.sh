#/user/bin/env bash

LOG_INFO "executing: $(readlink -f $0)"

# install need softwares
which fd || sudo apt install find-fd
which rg || sudo apt install ripgrep
which gtags || sudo apt install -y global
which python3 || sudo apt install -y python3
