# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

alias lla="ls -al"
alias v="nvim"
alias g="git"
alias lg="lazygit"
alias tk="tmux kill-ses"

# Set EDITOR environmental variable to nvim if it is installed
if command -v "nvim" >/dev/null 2>&1; then
  export EDITOR="nvim"
fi

export GOPATH="$HOME/go"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export ZK_ROOT="$HOME/notes/"

if command -v "starship" >/dev/null 2>&1; then
  eval "$(starship init bash)"
fi

eval "$(zoxide init bash)"
eval "$(fzf --bash)"
