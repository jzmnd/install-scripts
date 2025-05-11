#!/bin/bash
# ---------------------------------------------------------------
# Install script for setting up Mac OS X with common tools
# By          Jez Smith
# Tested on   Mac OS X 14.7 Apple M1 Pro
# ---------------------------------------------------------------

# Ask for the administrator password upfront
sudo -v

# Install all available updates
softwareupdate -ia --verbose

# Install Rosetta
softwareupdate --install-rosetta

# Install Xcode CLT
xcode-select --install

# Install homebrew
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew update

# Install core tools
brew install wget gcc tmux cmake openssl

# GNU tools
brew install coreutils findutils gnu-indent gnu-sed gnutls grep gnu-tar gawk

# Git
brew tap b4nst/homebrew-tap
brew install git git-flow turbogit

# Virtual envs
pip install virtualenv
brew install pyenv pyenv-virtualenv

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# GNU tools
brew install coreutils findutils gnu-indent gnu-sed gnutls grep gnu-tar gawk

# Install databases
brew install mysql postgresql@14 redis
curl https://install.duckdb.org | sh

# Install scientific libraries
brew install fftw eigen boost

# Rust, spark, scala, kafka, golang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup-init
brew cask install java
brew install go scala sbt apache-spark kafka

# Install image and audio software
brew install gwyddion epstool imagemagick graphviz ffmpeg libsndfile poppler

# Node/npm
brew install node
npm install -g npm@latest
npm install -g n
npm install -g typescript

# Protobuf
brew install protobuf grpcurl bufbuild/buf/buf

# Terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# Other useful tools
brew install p7zip xz speedtest-cli bat htop btop tree nmap hadolint hdf5 rename fzf yq

# Cleanup
brew cleanup -s
