# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
alias home="cd /home/jasjitbansia"
alias cls="clear"
alias rpi='kitty +kitten ssh jasjitbansia@192.168.1.8'
alias server='kitty +kitten ssh jasjitbansia@192.168.1.9'
alias hypr="nano /home/jasjitbansia/.config/hypr/hyprland.conf"
alias prv="kitten icat"
eval "$(starship init bash)"
