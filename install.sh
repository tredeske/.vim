#!/bin/sh

this=`readlink -f "$0"`
this_d=`dirname "$this"`

add_line_to() {
    line="$1"
    file="$2"
    grep -qF -- "$line" "$file" || echo "$line" >> "$file"
}
add_link() {
    from="$1"
    to="$2"
    if [ ! -e "$to" ]; then
        ln -sr "$from" "$to"            || exit 1
    fi
}

add_line_to "# added by $0"             "$HOME/.bashrc"
add_line_to "alias psg='ps -ef|grep'"   "$HOME/.bashrc"
add_line_to "alias ll='ls -la'"         "$HOME/.bashrc"
add_line_to "set -o vi"                 "$HOME/.bashrc"
add_line_to "PATH=~/bin:$PATH"          "$HOME/.bashrc"

add_link "./gitconfig" "$HOME/.gitconfig"
add_link "./gvimrc" "$HOME/.gvimrc"
add_link "./vimrc" "$HOME/.vimrc"
add_link "./tmux.conf" "$HOME/.tmux.conf"
add_link "./bin" "$HOME/bin"

if [ ! -d "$HOME/.ssh" ]; then
    mkdir -m 0700 "$HOME/.ssh"          || exit 1
fi
add_link "./ssh-config" "$HOME/.ssh/config"

exit 0
