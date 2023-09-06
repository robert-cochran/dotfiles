#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles
local APP=git

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


echo "[LINK] .gitconfig to ~"
ln -sf ${DOTFILES_DIR}/$APP/.gitconfig ~/.gitconfig

echo "[$APP] setup finished \n"

