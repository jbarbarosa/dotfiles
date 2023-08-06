# Lines configured by zsh-newuser-install
source /usr/lib/spaceship-prompt/spaceship.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindings.zsh

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/visitor/.zshrc'

# ASDF version manager
. "$HOME/.asdf/asdf.sh"

autoload -Uz compinit
compinit

# End of lines added by compinstall

export PATH=$PATH:/home/visitor/.local/bin:$(go env GOPATH)/bin

