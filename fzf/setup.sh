#!/bin/zsh


local DOTFILES_DIR=${HOME}/dotfiles

# NOTE: fzf also a plugin for vim

if ! command -v fzf > /dev/null; then

    echo "Install fzf \n"
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
else
    echo "[SYSTEM] Update fzf \n"
    popd ~/.fzf
    git pull
    pushd
fi


echo "Link fzf to home dir \n"
# symlink zsh aliases into zsh_alias
# .fzf.zshrc has all custom settings
#   NOTE:   This will save a symlink with the full path to the dir, 
#   meaning the user's home dir name will be saved into the repo.
#   Need to find way around this
#ln -sf ${DOTFILES_DIR}/fzf/.fzf.zshrc ~/.zsh_alias

# these were in ~ but not sure its needed. seems boilerplate
#ln -sf ~/dotfiles/fzf/.fzf.bash ~/.fzf.bash
#ln -sf ~/dotfiles/fzf/.fzf.zsh  ~/.fzf.zsh
