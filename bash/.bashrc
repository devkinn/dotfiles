# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Add user specific environment to PATH
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$PATH"
fi
export PATH

# --- TOOLS ---
eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fzf --bash)"

# --- ALIASES ---
alias v="nvim"
alias g="git"
alias lg="lazygit"
alias tk="tmux kill-ses"

# Replace ls with eza
if command -v "eza" >/dev/null 2>&1; then
  EZA_DEFAULT_OPTS="--color=always --group-directories-first --icons"
  alias ls="eza $EZA_DEFAULT_OPTS"
  alias ll="eza --long --git $EZA_DEFAULT_OPTS"
  alias lla="eza --long --all --git $EZA_DEFAULT_OPTS"
  alias lt="eza --tree --level=2 $EZA_DEFAULT_OPTS"
else
  alias lla="ls -al"
fi

# --- EXPORTS ---

# Set EDITOR environment variable to Neovim
if command -v "nvim" >/dev/null 2>&1; then
  export EDITOR="nvim"
fi

# Zettelkasten root directory for zk
export ZK_ROOT="$HOME/notes/"
