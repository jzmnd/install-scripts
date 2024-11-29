#!/bin/bash
# ---------------------------------------------------------------
# Install ZSH and OMZ
# By          Jez Smith
# Tested on   Mac OS X 14.7 Apple M1 Pro
# ---------------------------------------------------------------

# Install zsh
brew install zsh zsh-completions

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Make zsh default
chsh -s $(which zsh)
