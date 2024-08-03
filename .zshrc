# Aliases
alias cd="z"
alias pnpx="pnpm dlx"

# GVT deps config
export PKG_CONFIG_PATH="/$(brew --prefix)/lib/pkgconfig:$PKG_CONFIG_PATH"
export DYLD_LIBRARY_PATH="/$(brew --prefix)/lib:$DYLD_LIBRARY_PATH"
export LDFLAGS="-L/$(brew --prefix)/opt/libffi/lib"
export CPPFLAGS="-I/$(brew --prefix)/opt/libffi/include"

# Virtualenv config
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=$(brew --prefix)/bin/virtualenv
source virtualenvwrapper.sh

# NVM config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ZSH plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Autocompletion for make
zstyle ':completion:*:*:make:*' tag-order 'targets'

# Inits
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
autoload -U compinit && compinit
