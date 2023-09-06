#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles
local APP=tmux

echo "\n[$APP] setup.sh"


if ! type brew > /dev/null; then
    [ -f ${DOTFILES_DIR}/brew/setup.sh ] && \
        echo "[SETUP] Installing brew" && \
        ${DOTFILES_DIR}/brew/setup.sh
fi


if ! brew list | grep $APP > /dev/null; then
    echo "[INSTALL] $APP via brew"
    brew install $APP
else
    echo "[UPDATE] $APP already installed, updating via brew"
    brew upgrade $APP
fi

# install plugin manager in current dir if it doenst already exist
# NOTE: logic here is wrong, clones regardless of dir already existing
if [ ! -d ./.tmux/plugins/tpm ] ; then 
    echo "[INSTALL] plugins"
    git clone https://github.com/tmux-plugins/tpm ./.tmux/plugins/tpm
else
    echo "[INSTALL] plugin manager already installed"
fi

echo "[LINK] .tmux to ~"
ln -sf ${DOTFILES_DIR}/$APP/.tmux ${HOME}

echo "[LINK] .tmux.conf to ~"
ln -sf ${DOTFILES_DIR}/$APP/.tmux.conf ${HOME}/.tmux.conf

# load tmux conf
tmux source ~/.tmux.conf

echo "[$APP] setup finished \n"

