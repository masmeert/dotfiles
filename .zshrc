# Virtualenv config
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=$(brew --prefix)/bin/virtualenv
source virtualenvwrapper.sh

# ZSH plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Autocompletion for make
zstyle ':completion:*:*:make:*' tag-order 'targets'

autoload -U compinit && compinit

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

fpath+=~/.zfunc
autoload -Uz compinit && compinit
