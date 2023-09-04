#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

echo "Setting up ZSH"
# install zsh 
# check xcode is installed (so that homebrew can be installed)

if ! command -v brew > /dev/null; then
    echo "Install zsh via brew \n"
    brew install zsh
fi

#cp ./dotfiles/.bash_profile ~
#cp ./dotfiles/.zshrc ~


#echo "Installing ZSH"
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# symlink zshrc to home
ln -sf ${DOTFILES_DIR}/zsh/.zshrc ~/.zshrc

# symlink zsh_alias dir to home
ln -sf ${DOTFILES_DIR}/zsh/.zsh_alias  ~/

