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

if [ ! -e "~/.vimbackup" ]
    mkdir "$VIMHOME/.vimbackup"
fi

if [ ! -e "~/vimswap" ]
    mkdir "$VIMHOME/.vimswap"
fi

git clone git://github.com/billcava/vimrc.git "$VIMHOME"
cd "$VIMHOME"

ln -s ~/.vim/vimrc ~/.vimrc

echo "vimrc is installed."

