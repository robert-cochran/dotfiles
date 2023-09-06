#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

echo "vim setup.sh"

if ! type brew > /dev/null; then

    [ -f ${DOTFILES_DIR}/brew/setup.sh ] && \
        echo "[SETUP] Installing brew" && \
        ${DOTFILES_DIR}/brew/setup.sh
    
fi

if ! brew list | grep vim > /dev/null; then

    # NOTE: mac comes preinstalled with vim. to upgrade vim either compile 
    # it to /usr/bin/vim, or install/upgrade with brew, (or use neovim)
    echo "[INSTALL] vim via brew"
    brew install vim

fi

# TODO install vim plugin manager
# otherwise plugins in vimrc will cause errors when zsh starts

echo "[LINK] .vimrc to ~"
ln -sf ${DOTFILES_DIR}/vim/.vimrc ${HOME}/.vimrc


echo "[LINK] .vim to ~"
ln -sf ${DOTFILES_DIR}/vim/.vim ${HOME}

# TODO symlink zsh aliases into zsh_alias
echo "[LINK] .vim.zshrc to ~/.zsh_alias"
ln -sf ${DOTFILES_DIR}/vim/.vim.zshrc ${HOME}/.zsh_alias

echo "vim setup finished"

