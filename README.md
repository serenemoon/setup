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
* git config --global --add oh-my-zsh.hide-dirty 1

# VIM

## vim plugin install
* enter vim, then type `:call dein#install()`

## nvim plugin install
* enter nvim, then type `:PackerInstall`

## denite
msgpack required
pynvim required

```bash
sudo apt install python3-msgpack
sudo apt install python3-pip
python3 -m pip install pynvim
```

# Install External

## Vim DevIcon Font:

* Download UbuntuMono.zip file from url: https://github.com/ryanoasis/nerd-fonts/releases
* unzip and Copy all .ttf files into C:/Windows/Fonts directory
* Select font in Term
`make nerdfont` will download Inconsolata and UbuntuMono font to external/download

## universal-ctags

* github repo: https://github.com/universal-ctags/ctags
* apt install: `sudo apt install universal-ctags`
> ctags --version  # to see is ctags soft-linked-to ctags-universal, if not, do:
> ```cd /usr/bin; sudo rm ctags; sudo ln -s ctags-universal ctags```

## ripgrep

ripgrep is packed in this setup repo, if need update to newest version
download newest **ripgrep-$version-x86_64-unknown-linux-musl.tar.gz** and replace external/ripgrep
github repo: https://github.com/BurntSushi/ripgrep/releases

## nvim

nvim is packed in this setup repo, if need update to newest version
download newest **nvim-linux64.tar.gz** and replace external/nvim-linux64
github repo: https://github.com/neovim/neovim/releases

## powerlevel10k

setup.sh will setup ohmyzsh and powerlevel10k if using zsh
need to `p10k configure` to enable Instant Prompt to speed up zsh plugins loading lag

## fzf

external/submodule/fzf/install need fzf executable to run, and will do version checking.
if submodule/fzf is updated, fzf executable might need update too
fzf executable is located at:
github repo: https://github.com/junegunn/fzf/releases
if `install` script has trouble  downloading fzf executable,
manually download and put it into executable/submodule/fzf/bin
