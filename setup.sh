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

# Make conda not activate base by default
conda config --set auto_activate_base false

# Make ZSH a Valid Login Shell
command -v zsh | sudo tee -a /etc/shells

# Make ZSH Default Shell
sudo chsh -s $(which zsh) $USER

# Bundle the ZSH Plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Install Vim Plugged for NeoVim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install the nVim plugins
nvim +PluginInstall +qall

# Install My Favourite Fonts
IOSEVKA=/tmp/iosevka.zip
JETBRAINS=/tmp/jb.zip
GO=/tmp/go.zip
mkdir -p ~/.fonts

wget -O "$IOSEVKA" "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip" 
wget -O "$JETBRAINS" "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip"
wget -O "$GO" "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Go-Mono.zip"

unzip "$IOSEVKA" ~/.fonts
unzip "$JETBRAINS" ~/.fonts
unzip "$GO" ~/.fonts

rm "$GO"
rm "$JETBRAINS"
rm "$IOSEVKA"

# Install the Node Modules needed for NVim
sudo npm i -g typescript-language-server gopls pyright clangd dockerfile-language-server-nodejs bash-language-server @angular/language-service@next typescript @angular/language-server

