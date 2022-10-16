# Install Nix
sh <(curl -L https://nixos.org/nix/install)

# Source Nix
. ~/.nix-profile/etc/profile.d/nix.sh

# Install My Fav Packages
export NIXPKGS_ALLOW_UNFREE=1
nix-env -iA nixpkgs.git nixpkgs.python310 nixpkgs.jdk nixpkgs.go nixpkgs.flutter nixpkgs.nodejs \
	nixpkgs.zsh nixpkgs.fd nixpkgs.exa nixpkgs.bat nixpkgs.gnumake nixpkgs.docker nixpkgs.docker-compose nixpkgs.antibody \
	nixpkgs.gnupg nixpkgs.gradle nixpkgs.conda nixpkgs.curl nixpkgs.wget nixpkgs.btop \ 
	nixpkgs.stow nixpkgs.neovim nixpkgs.jetbrains.idea-ultimate nixpkgs.sublime

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

# Make conda not activate base by default
conda config --set auto_activate_base false

# Make ZSH a Valid Login Shell
command -v zsh | sudo tee -a /etc/shells

# Make ZSH Default Shell
sudo chsh -s $(which zsh) $USER

# Bundle the ZSH Plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Install Packer for nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

