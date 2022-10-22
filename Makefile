default:git vim rg fzf

SILENT=@
IGNORE_ERROR=-
vim:
	${IGNORE_ERROR}${SILENT}rm ~/.vimrc
	${SILENT}ln -s `pwd`/vimrc/.vimrc ~/.vimrc

git:
	${SILENT}echo "set up git ailases!"
	${SILENT}git config --global http.sslverify false
	${SILENT}git config --global https.sslverify false
	${SILENT}git config --global alias.st status
	${SILENT}git config --global alias.co checkout
	${SILENT}git config --global alias.cm commit
	${SILENT}git config --global alias.cma "commit --amend"
	${SILENT}git config --global alias.cme "commit --amend --no-edit"
	${SILENT}git config --global alias.rsh "reset --hard HEAD"
	${SILENT}git config --global alias.dfh "diff HEAD"
	${SILENT}git config --global alias.df  "diff HEAD~1"
	${SILENT}git config --global --add oh-my-zsh.hide-status 1
	${SILENT}git config --global --add oh-my-zsh.hide-dirty 1


# may be need sudo
rg:
	${SILENT}echo Installing rg...
	${SILENT}dpkg -i external/ripgrep_13.0.0_amd64.deb


# first clone git://github.com/junegunn/fzf.git into external/fzf.git
# then copy external/fzf to external/fzf.git/bin
fzf:
	${SILENT}git submodule update --init
	${SILENT}cd external; cp fzf fzf.git/bin; [ -f fzf.git/bin/fzf ] && echo "Copy fzf Success!" || echo "Copy fzf Failed!"
	${SILENT}[ -x external/fzf.git/install ] && ./external/fzf.git/install

zsh:
	${SILENT}[ -d ~/.oh-my-zsh ] && rm -rf ~/.oh-my-zsh
	${SILENT}[ -d ~/.oh-my-zsh ] && rm -rf ~/.oh-my-zsh
	${SILENT}which zsh || { echo "installing zsh" && sudo apt install -y zsh; }
	${SILENT}[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.orig.$(date +"%Y%m%d_%H%M%S")
	${SILENT}cd external/submodule/ohmyzsh/tools && install.sh || echo "please backup then remove ~/.zshrc first"
	${SILENT}if [ ! -d ~/.autojump ]; then \
		which python && cd external/autojump && ./install.py || echo "autojump install failed"; \
	else \
	 	echo "autojump already installed!"; \
	fi

nerdfont:
	${SILENT}cd external/download; wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Inconsolata.zip
	${SILENT}cd external/download; wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/UbuntuMono.zip

autojump:
	${SILENT}cd external/submodule/autojump && ./install.py || echo "please do: git submodule update --init\nthen re run: make autojump"

