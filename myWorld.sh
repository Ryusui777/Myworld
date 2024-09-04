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
# copies starship folder
cp -r starship ~/.config/starship 

# puts starship in bashrc
echo "Starship configuration" >> ~/.bashrc
echo "export STARSHIP_CONFIG=~/.config/starship/starship.toml" >> ~/.bashrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# copies .wezterm.lua 
cp .wezterm.lua ~/

sudo dnf install -y https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/wezterm-20240203_110809_5046fc22-1.fedora39.x86_64.rpm


echo "myWorld started!"
