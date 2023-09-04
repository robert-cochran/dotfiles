#!/bin/zsh

if ! command -v brew > /dev/null; then

    echo "Install Brew via curl \n"
    # NOTE: install script written for bash, not zsh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo "Adding brew to zsh path"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') \
        >> ${HOME}/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

    echo "Install Homebrew Cask \n"
	brew tap homebrew/cask

	echo "Install Brew Bundle \n"
	brew tap Homebrew/bundle
else
    echo "Update brew \n"
    brew update
fi

# Brew Bundle
# Then pass in the Brewfile location...
# brew bundle --file ~/.dotfiles/Brewfile
#
# # ...or move to the directory first.
# cd ~/.dotfiles && brew bundle
