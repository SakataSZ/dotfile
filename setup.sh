################################################################################
# Author: @SakataSZ
# Date: 2023-07-30
# Description: Setup script for Ubuntu 20.04
# Usage: sudo ./setup.sh
################################################################################

# Update and upgrade
yes | sudo apt update && sudo apt upgrade

# Install upzip
sudo apt install unzip

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

# Install Starship
curl -fsSL https://starship.rs/install.sh | bash

# Install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Install python dependencies
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Install python
pyenv install 3.11.4
pyenv global 3.11.4

# Install volta
curl https://get.volta.sh | bash

# Install node
volta install node

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install rustup components
rustup component add clippy rls rust-analysis rust-src rust-docs rustfmt rust-analyzer

# Install ripgrep
cargo install ripgrep

# Install fzf
sudo apt install fzf
