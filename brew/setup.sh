#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

echo "brew setup.sh"

if ! type brew > /dev/null; then

    echo "[INSTALL] brew via curl \n"
    # NOTE: install script written for bash, not zsh
    /bin/bash -c "$(curl -fsSL \
        https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo "[PATH] Adding brew to zsh path"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') \
        >> ${HOME}/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

    echo "[INSTALL] Homebrew Cask \n"
	brew tap homebrew/cask

	echo "[INSTALL] Brew Bundle \n"
	brew tap Homebrew/bundle

else

    echo "[UPDATE] brew \n"
    brew update

fi

# Brew Bundle
# Then pass in the Brewfile location...
# brew bundle --file ~/.dotfiles/Brewfile
#
# # ...or move to the directory first.
# cd ~/.dotfiles && brew bundle

echo "brew setup finished"

