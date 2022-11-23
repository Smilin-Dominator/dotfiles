# Copying the configs
stow nvim
stow git
stow zsh
stow alacritty 
stow btop
stow neofetch
stow nitrogen
stow picom
stow rofi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Packer for nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install Nvim Plugins
nvim +PackerInstall

