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
brew upgrade

# Install WGET
brew install wget

# Install gcc and gfortran
brew install gcc

# Install tmux
brew install tmux

# Install cmake
brew install cmake

# Git
brew install git
brew install git-flow
brew tap b4nst/homebrew-tap
brew install turbogit

# Virtual envs
pip install virtualenv
brew install pyenv
brew install pyenv-virtualenv

# GNU tools
brew install coreutils
brew install findutils
brew install gnu-indent
brew install gnu-sed
brew install gnutls
brew install grep
brew install gnu-tar
brew install gawk

# Install databases
brew install mysql
brew install postgresql@14
brew install redis

# Install scientific libraries
brew install fftw
brew install eigen
brew install boost

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup-init

# Golang
brew install go

# Install image software
brew install gwyddion
brew install epstool
brew install imagemagick
brew install graphviz

# Audio tools
brew install ffmpeg
brew install libsndfile

# Spark, scala, kafka
brew cask install java
brew install scala
brew install sbt
brew install apache-spark
brew install kafka

# Node/npm
brew install node
npm install npm@latest -g
npm install -g n
npm install -g typescript

# OpenSSL
brew install openssl

# Protobuf
brew install protobuf
brew install grpcurl
brew install bufbuild/buf/buf

# Terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# Other useful tools
brew install p7zip
brew install xz
brew install speedtest-cli
brew install htop
brew install btop
brew install tree
brew install nmap
brew install hadolint
brew install hdf5
brew install poppler
brew install rename

# Cleanup
brew cleanup -s
