#!/usr/bin/env bash

export SETUPDIR=$(dirname $(readlink -f $0))
SUBMODULE_DIR=$SETUPDIR/external/submodule

is_zsh() {
    [[ $SHELL =~ zsh ]] && return 0 || return 1
}
is_zsh && RCFILE=~/.zshrc || RCFILE=~/.bashrc
is_zsh && INIT_FILE=$SETUPDIR/init/init.zsh || INIT_FILE=$SETUPDIR/init/init.bash

add_line_to() { # $1: line, $2: file
    grep -q -F "$1" $2 && return
    echo "$1" >> $2
}

DATETIME=$(date +"%Y%m%s_%H%M%S")
backup_to_tmp() {
    [ ! -e $1 ] && echo "$1 don't exist" && return
    dest=$(basename $1).bak.$DATETIME
    mv $1 /tmp/$dest
    echo "$1 moved to /tmp/$dest"
}

create_softlink_to() { # $1: destlink, $2: source file/dir
    [[ ! -e $2 ]] && echo "E: $2 don't exist" && return
    [[ -h $1 ]] && rm $1
    [[ -e $1 ]] && mv $1 $1.bak.$(date +"%Y%m%d_%H%M%S")
    mkdir -p $(dirname $1)
    cd $(dirname $1) && ln -s $2 $1
}

# symlinks
create_softlink_to ~/.config/nvim $SETUPDIR/nvim
create_softlink_to ~/.local/share/nvim $SETUPDIR/nvim_share

setup_initrc() {
    add_line_to "[[ -f $INIT_FILE ]] && source $INIT_FILE" $RCFILE
}

OMZDIR=$SUBMODULE_DIR/ohmyzsh
setup_ohmyzsh() {
    [ ! -d $OMZDIR ] && echo "$OMZDIR don't exist, please init submodule" && return 1
    [ -f ~/.zshrc ] && echo "backup ~/.zshrc then re run setup.sh" && return 1
    backup_to_tmp ~/.oh-my-zsh
    backup_to_tmp ~/.zshrc
    ln -s $OMZDIR ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
}

setup_powerlevel10k() {
    grep -q powerlevel10k ~/.zshrc && echo "powerlevel10k already configured" && return 0
    [ ! -d ~/.oh-my-zsh ] && echo "~/.oh-my-zsh don't exist, please setup ohmyzsh first" && return 1
    cd $OMZDIR/custom/themes; ln -s -f ../../../powerlevel10k
    sed -i 's;^ZSH_THEME=.*;ZSH_THEME="powerlevel10k/powerlevel10k";' ~/.zshrc
}

setup_fzf() {
    src_fzf=$SETUPDIR/bin/fzf
    dest_fzf=$SUBMODULE_DIR/fzf/bin/fzf
    cp $src_fzf $dest_fzf
    $SUBMODULE_DIR/fzf/install --all
}

is_zsh && setup_ohmyzsh
is_zsh && setup_powerlevel10k
setup_fzf
setup_initrc
# vim: ft=sh
