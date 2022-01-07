default:gitconfig

include mkfiles/gitconfig.mk


include mkfiles/vimconfig.mk



rg:
	@echo Installing rg...
	@dpkg -i external/ripgrep_13.0.0_amd64.deb
