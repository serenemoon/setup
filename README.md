# setup
common environment setup

# zsh infos
* ```cp external/ohmyzsh/templates/zshrc.zsh-template ~/.zshrc```
* modify ~/.zshrc:
> export ZSH=this_repo_dir/external/ohmyzsh
> ZSH_THEME="ys"
> DISABLE_UNTRACKED_FILES_DIRTY="true"
> plugins=(git autojump repo tmux extract z)
> add line: [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## fix large git repository slow

* git config --global --add oh-my-zsh.hide-status 1

# vim plugin

* enter vim, then type `:call dein#install()`

# Vim DevIcon Font:

* Download UbuntuMono.zip file from url: _https://github.com/ryanoasis/nerd-fonts/releases_
* Copy all .ttf files into **C:/Windows/Fonts** directory
* Select font in Term
