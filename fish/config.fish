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
