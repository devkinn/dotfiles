if type -q eza
    function ls --wraps ls
        command eza --color=always --group-directories-first --icons $argv
    end

    function ll --wraps ls
        command eza --long --git --color=always --group-directories-first --icons $argv
    end

    function lla --wraps ls
        command eza --long --all --git --color=always --group-directories-first --icons $argv
    end
end
