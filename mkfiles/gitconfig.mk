gitconfig:
	@echo "HELL"
	@git config --global alias.st status
	@git config --global alias.co checkout
	@git config --global alias.cm commit
	@git config --global alias.cma "commit --amend"
	@git config --global alias.rsh "reset --hard HEAD"
	@git config --global alias.dfh "diff HEAD"
	@git config --global alias.df  "diff HEAD~1"
