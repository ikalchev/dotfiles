if status is-interactive
    atuin init fish | source
    /opt/homebrew/bin/brew shellenv | source
    # Extend the locations where fish looks for functions to
    # include "machine-specific" functions. For example, these
    # are functions not common between machines.
    set -a fish_function_path ~/.config/more_fish 
end
