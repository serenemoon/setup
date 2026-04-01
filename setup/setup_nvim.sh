#/user/bin/env bash

LOG_INFO "executing: $(readlink -f $0)"

[ -L ~/.config/nvim ] && LOG_DEBUG "remove old nvim link" && rm ~/.config/nvim
[ -d ~/.config/nvim ] && LOG_DEBUG "back up old nvim" && mv ~/.config/nvim ~/.config/nvim_bak
ln -s -f ${SETUPDIR}/nvim ~/.config/nvim

WORKDIR=~/toolwares
mkdir -p $WORKDIR && cd $WORKDIR
[ -d $WORKDIR/nvim-linux-x86_64 ] && LOG_DEBUG "nvim already exist" && return 0
[ ! -f nvim-linux-x86_64.tar.gz ] && LOG_DEBUG "wget nvim releases" && wget https://github.com/neovim/neovim/releases/download/v0.12.0/nvim-linux-x86_64.tar.gz

tar xzf nvim-linux-x86_64.tar.gz

mkdir -p $WORKDIR/bin && cd $WORKDIR/bin
ln -s $WORKDIR/nvim-linux-x86_64/bin/nvim nvim
