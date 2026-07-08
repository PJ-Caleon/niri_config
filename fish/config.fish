source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
    fastfetch --config ~/.config/fastfetch/config.jsonc
end
fish_add_path /home/pj/.spicetify

set -gx LC_TIME en_US.UTF-8

starship init fish | source

# Setup for zoxide
fish_add_path ~/.cargo/bin
zoxide init fish | source
