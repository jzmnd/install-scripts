set_osx_defaults:
	@echo "Setting sensible MacOS X defaults"
	@bash scripts/osx-defaults.sh

install_main:
	@echo "Installing main toolset"
	@bash scripts/main-install.sh

install_jupyterlab:
	@echo "Installing jupyter and jupyterlab"
	@bash scripts/jupyterlab-install.sh

install_zsh:
	@echo "Installing zsh"
	@bash scripts/zsh-install.sh

install_fonts:
	@echo "Installing fonts"
	@bash scripts/fonts-install.sh

set_rc_files:
	@echo "Copying .vimrc and .zshrc"
	@cp profiles/vimrc ~/.vimrc
	@cp profiles/zshrc ~/.zshrc

run: set_osx_defaults install_main install_jupyterlab install_zsh install_fonts set_rc_files

.PHONY: run set_osx_defaults install_main install_jupyterlab install_zsh install_fonts set_rc_files
