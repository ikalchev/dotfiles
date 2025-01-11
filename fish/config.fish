if status is-interactive
    atuin init fish | source
    uname -s | grep -q Darwin && /opt/homebrew/bin/brew shellenv | source
    # Extend the locations where fish looks for functions to
    # include "machine-specific" functions. For example, these
    # are functions not common between machines.
    set -a fish_function_path ~/.config/more_fish

    # Machine-specific config.
    test -e ~/.config/more_fish/config.fish && source ~/.config/more_fish/config.fish

    # Config the hydro prompt.
    set --global hydro_color_pwd green
    set --global hydro_color_git cyan
    set --global hydro_color_prompt bryellow
    set --global hydro_multiline true
end
