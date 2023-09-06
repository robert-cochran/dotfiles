#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles
local APP=zsh

echo "[$APP] setup.sh"

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

echo "[LINK] .zshrc to ~"
ln -sf ${DOTFILES_DIR}/$APP/.zshrc ~/.zshrc

echo "[LINK] .zsh_alias to ~"
ln -sf ${DOTFILES_DIR}/$APP/.zsh_alias  ~/

# NOTE: ohmyzsh installed in .default.zshrc
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
