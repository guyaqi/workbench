#!/bin/sh

export wb="$( cd "$( dirname "$0"  )" && pwd  )"

echo "Activate"

cp $wb/config/.vimrc $HOME/.vimrc
cp $wb/config/.tmux.conf $HOME/.tmux.conf
