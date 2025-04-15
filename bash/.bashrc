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

export GOPATH="$HOME/go"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fzf --bash)"
