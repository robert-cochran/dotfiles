#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles
local APP=vim

echo "[$APP] setup.sh"

# INSTALLING BREW
if ! type brew > /dev/null; then
    [ -f ${DOTFILES_DIR}/brew/setup.sh ] && \
        echo "[SETUP] Installing brew" && \
        ${DOTFILES_DIR}/brew/setup.sh
fi

# INSTALLING APP
if ! brew list | grep $APP > /dev/null; then
    # NOTE: mac comes preinstalled with vim. (/usr/bin/vim) 
    echo "[INSTALL] $APP via brew"
    brew install $APP
else
    echo "[UPDATE] $APP already installed, updating via brew"
    brew upgrade $APP
fi

# TODO install vim plugin manager
# otherwise plugins in vimrc will cause errors when zsh starts

# SYMLINKS
echo "[LINK] .vimrc to ~"
ln -sf ${DOTFILES_DIR}/$APP/.vimrc ${HOME}/.vimrc

echo "[LINK] .vim to ~"
ln -sf ${DOTFILES_DIR}/$APP/.vim ${HOME}

echo "[LINK] .vim.zshrc to ~/.zsh_alias"
ln -sf ${DOTFILES_DIR}/$APP/.vim.zshrc ${HOME}/.zsh_alias

echo "vim setup finished"

