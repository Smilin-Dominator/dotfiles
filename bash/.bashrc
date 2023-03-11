# Variables
export LANG=en_US.UTF-8
export EDITOR="emacsclient -c -a emacs"
export LOCALE_ARCHIVE="$(nix-env --installed --no-name --out-path --query glibc-locales)/lib/locale/locale-archive"
export GPG_TTY=$(tty)
export BROWSER=firefox

# Aliases
alias webstorm="webstorm &> /tmp/webstorm.log &"
alias ls=exa
alias pn=pnpm
alias emacs="emacsclient -c -a emacs"

# Path
export PATH=$PATH:~/.config/emacs/bin/
