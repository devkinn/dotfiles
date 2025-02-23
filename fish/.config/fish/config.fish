if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

alias ll="eza -l --icons"
alias lla="eza -al --icons"

alias v="nvim"

set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

starship init fish | source
