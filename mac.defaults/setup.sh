#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles
local APP=mac.defaults

echo "\n[$APP] setup.sh"

if [ ! -f $APP ] ; then 
    echo "[INSTALL] $APP"
    ${DOTFILES_DIR}/$APP/$APP
fi

echo "[$APP] setup finished \n"

