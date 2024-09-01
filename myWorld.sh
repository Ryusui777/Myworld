#!bin/bash
echo "Starting myWorld..."

# nvim installation
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# installing packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim

# copies nvim folder
cp -r nvim ~/.config/nvim 

# Install starship
curl -sS https://starship.rs/install.sh | sh
cp -r starship ~/.config/starship 

# copies .wezterm.lua 
cp -r wezterm ~/wezterm

#!/bin/bash

# Function to detect the Linux distribution
detect_distro() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "$ID"
  elif [ -f /etc/redhat-release ]; then
    echo "redhat"
  elif [ -f /etc/debian_version ]; then
    echo "debian"
  else
    echo "unknown"
  fi
}

# Detect the distribution
DISTRO=$(detect_distro)

# Take actions based on the distribution
case $DISTRO in
  ubuntu|debian)
    sudo apt-get update
    sudo apt install -y https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/wezterm-20240203_110809_5046fc22-1.fedora39.x86_64.rpm
    ;;
  fedora)
    sudo dnf install -y https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/wezterm-20240203_110809_5046fc22-1.fedora39.x86_64.rpm
    ;;
  arch)
    sudo pacman -Syu package-name
    ;;
  redhat)
    sudo yum install -y https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/wezterm-20240203_110809_5046fc22-1.fedora39.x86_64.rpm
    ;;
  *)
    echo "Unknown distribution. Cannot proceed."
    ;;
esac

echo "myWorld started!"
