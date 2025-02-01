if status is-interactive
    fish_add_path /usr/local/bin
    atuin init fish | source
    uname -s | grep -q Darwin && /opt/homebrew/bin/brew shellenv | source
    starship init fish | source

    # Extend the locations where fish looks for functions to
    # include "machine-specific" functions. For example, these
    # are functions not common between machines.
    set -a fish_function_path ~/.config/more_fish

    # Machine-specific config.
    test -e ~/.config/more_fish/config.fish && source ~/.config/more_fish/config.fish
end
