#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles
local APP=terminal

echo "\n[$APP] setup.sh"


if [ ! -f $APP ] ; then 
    echo "[INSTALL] $APP"
    ${DOTFILES_DIR}/$APP/themes/setup.sh

    #ln -sf ${DOTFILES_DIR}/terminal/.inputrc ~/.inputrc
fi


echo "[$APP] setup finished \n"

