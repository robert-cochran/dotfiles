#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles


echo "fzf setup.sh"

if ! type brew > /dev/null; then

    [ -f ${DOTFILES_DIR}/brew/setup.sh ] && \
        echo "[SETUP] Installing brew" && \
        ${DOTFILES_DIR}/brew/setup.sh
    
fi

# NOTE: fzf's also a plugin for vim
if ! type fzf > /dev/null; then

    echo "[INSTALL] cloning fzf via git"
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    echo "[INSTALL] fzf \n"
    ~/.fzf/install

else

    echo "[UPDATE] fzf via git"
    popd ~/.fzf
        git pull
    pushd

fi


echo "[LINK] .fzf.zshrc to ~/.zsh_alias"
ln -sf ${DOTFILES_DIR}/fzf/.fzf.zshrc ${HOME}/.zsh_alias

echo "Vim setup finished \n"

