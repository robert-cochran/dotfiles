#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

# install tmux
if ! command -v tmux > /dev/null; then

    echo "Install tmux \n"
    brew install tmux
else
    echo "[SYSTEM] Update tmux \n"
    brew upgrade tmux
fi

# install plugin manager if it doenst already exist
# NOTE: logic here is wrong, clones regardless of dir existing
[ ! -f ${DOTFILES_DIR}/tmux/.tmux/plugins/tmp ] && \
    git clone https://github.com/tmux-plugins/tpm ./.tmux/plugins/tpm

# symlink
ln -sf ${DOTFILES_DIR}/tmux/.tmux ~/.tmux
ln -sf ${DOTFILES_DIR}/tmux/.tmux.conf ~/.tmux.conf

# load tmux conf
tmux source ~/.tmux.conf
