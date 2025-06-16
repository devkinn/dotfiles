if status is-interactive
    set -g fish_greeting
    starship init fish | source

    if type -q nvim
        set -gx EDITOR nvim
    end
end
