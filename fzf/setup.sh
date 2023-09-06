#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles
local APP=fzf


echo "\n[$APP] setup.sh"

if ! type brew > /dev/null; then
    [ -f ${DOTFILES_DIR}/brew/setup.sh ] && \
        echo "[SETUP] Installing brew" && \
        ${DOTFILES_DIR}/brew/setup.sh
fi

# NOTE: fzf's also a plugin for vim
if ! type $APP > /dev/null; then

    echo "[INSTALL] cloning $APP via git"
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf

    echo "[INSTALL] $APP"
    $HOME/.fzf/install

else

    echo "[UPDATE] $APP via git"
    popd $HOME/.fzf
        git pull
    pushd

fi

echo "[LINK] .fzf.zshrc to ~/.zsh_alias"
ln -sf ${DOTFILES_DIR}/$APP/.fzf.zshrc ${HOME}/.zsh_alias

echo "[$APP] setup finished \n"

