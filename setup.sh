# Copying the configs
stow nvim
stow git
stow zsh
stow alacritty 
stow btop
stow i3
stow neofetch
stow nitrogen
stow picom
stow rofi
stow volumeicon

# Bundle the ZSH Plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Install Packer for nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install Nvim Plugins
nvim +PackerInstall

