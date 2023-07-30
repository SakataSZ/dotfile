################################################################################
# Author: @SakataSZ
# Date: 2023-07-30
# Description: Setup script for Ubuntu 20.04
# Usage: sudo ./setup.sh
################################################################################

# Update and upgrade
yes | sudo apt update && sudo apt upgrade

# Install Vim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /opt/nvim
sudo ln -s /opt/nvim/AppRun /usr/bin/nvim
rm nvim.appimage

# Install Fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

# change default shell to fish
chsh -s /usr/bin/fish

# Install fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
