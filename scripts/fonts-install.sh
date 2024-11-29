#!/bin/bash
# ---------------------------------------------------------------
# Install fonts
# By          Jez Smith
# Tested on   Mac OS X 14.7 Apple M1 Pro
# ---------------------------------------------------------------

# Install powerline Meslo fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
bash ./install.sh Meslo
cd ..
rm -rf fonts

# Install Monaspace fonts
git clone https://github.com/githubnext/monaspace.git --depth=1
cd monaspace
bash util/install_macos.sh
cd ..
rm -rf monaspace
