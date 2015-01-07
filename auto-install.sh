#!/bin/sh
VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME/vimrc" ] && die "$VIMHOME/vimrc already exists."
[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

git clone git://github.com/billcava/vimrc.git "$VIMHOME"

ln -s ~/.vim/vimrc ~/.vimrc

if [ ! -e "~/$VIMHOME/.vimbackup" ]; then
    mkdir "$VIMHOME/.vimbackup"
fi

if [ ! -e "~/$VIMHOME/.vimswap" ]; then
    mkdir "$VIMHOME/.vimswap"
fi

echo ".vimrc is installed."

