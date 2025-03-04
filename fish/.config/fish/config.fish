if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

alias ll="eza -l --icons"
alias lla="eza -al --icons"

alias v="nvim"

set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket" # Add environment variable for ssh-agent systemd automatic startup

set -U fish_user_paths $HOME/.local/bin $fish_user_paths

starship init fish | source
