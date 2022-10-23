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

nerdfont:
	${SILENT}cd external/download; wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Inconsolata.zip
	${SILENT}cd external/download; wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/UbuntuMono.zip
