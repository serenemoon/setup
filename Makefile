default:git

vim:
	-@rm ~/.vimrc
	@ln -s `pwd`/vimrc/.vimrc ~/.vimrc

git:
	@echo "set up git ailases!"
	@git config --global alias.st status
	@git config --global alias.co checkout
	@git config --global alias.cm commit
	@git config --global alias.cma "commit --amend --no-edit"
	@git config --global alias.cme "commit --amend"
	@git config --global alias.rsh "reset --hard HEAD"
	@git config --global alias.dfh "diff HEAD"
	@git config --global alias.df  "diff HEAD~1"
	@git config --global alias.df  "diff HEAD~1"
	@git config --global --add oh-my-zsh.hide-status 1


# may be need sudo
rg:
	@echo Installing rg...
	@dpkg -i external/ripgrep_13.0.0_amd64.deb


# first clone git://github.com/junegunn/fzf.git into external/fzf.git
# then copy external/fzf to external/fzf.git/bin
fzf:
	@git submodule update --init
	@cd external; cp fzf fzf.git/bin; [ -f fzf.git/bin/fzf ] && echo "Copy fzf Success!" || echo "Copy fzf Failed!"
	@ [ -x external/fzf.git/install ] && ./external/fzf.git/install
