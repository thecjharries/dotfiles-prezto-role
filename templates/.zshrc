#
# Executes commands at the start of an interactive session.
#
# Original authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
# and modified here by
#   CJ Harries <cj@wizardsoftheweb.pro>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.config/prezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.config/prezto/init.zsh"
fi

unsetopt auto_name_dirs

source ~/.zalias

if which keepass >/dev/null; then
  export SSH_AUTH_SOCK=/tmp/$USER/ssh-keeagent.sock
  unset SSH_ASKPASS
fi

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH

export XDG_CONFIG_HOME=~/.config
