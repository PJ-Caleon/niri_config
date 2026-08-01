source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
    if not set -q NVIM
        fastfetch --config ~/.config/fastfetch/config.jsonc
    end
end
fish_add_path /home/pj/.spicetify

set -gx LC_TIME en_US.UTF-8

starship init fish | source

# Setup for zoxide
fish_add_path ~/.cargo/bin
zoxide init fish | source

# Setup yt-dlp (converts YT link to mp3)
alias yt-dlp='yt-dlp -x --audio-format mp3 --audio-quality 0 --add-metadata'

# Function to display all packages
function list_packages
    echo "--- Pacman ---"
    pacman -Q | wc -l
    echo "--- Flatpak ---"
    flatpak list --columns=application | wc -l
    echo "--- npm global ---"
    npm list -g --depth=0 2>/dev/null | tail -n +2 | wc -l
    echo "--- pipx ---"
    pipx list 2>/dev/null | grep -c package
    echo "--- pip ---"
    pip list 2>/dev/null | tail -n +2 | wc -l | string trim
    echo "--- Cargo ---"
    cargo install --list 2>/dev/null | grep -c "^[a-zA-Z0-9]" || echo 0
end
