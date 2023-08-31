#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

echo "Setting up ZSH"
# install zsh 
# check xcode is installed (so that homebrew can be installed)

if ! command -v brew > /dev/null; then
    echo "Install zsh via brew \n"
    brew install zsh
else
    # TODO ask if xcode wants to be installed in order to install zsh
    echo "Install zsh via xcode \n"
    ../xcode/setup.sh
    echo "Install zsh via brew \n"
    brew install zsh
fi



#cp ./dotfiles/.bash_profile ~
#cp ./dotfiles/.zshrc ~




# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# --------------------------- prev sh env setup -----------------------------
# #prep for creating links to open programs in terminal
# #makes a bin in usr dir and adds that path to the bash_profile
# mkdir ~/bin
# echo "PATH=\"~/bin:\${PATH}\"" >>  ~/.bash_profile
# echo "export PATH" >> ~/.bash_profile
#
# #Theme and previous rc or profile
# #https://github.com/Bash-it/bash-it/wiki/Themes
# ##https://github.com/Bash-it/bash-it
# # set up all themes, alternte between them for each new window, add
# transparency, opaqueness, colours on terminal
#
# #defaults program interfaces with default configurations of mac under
# # ~/Library/Preferences/, get the SeaShell.terminal file
# #more info https://wilsonmar.github.io/dotfiles/,
# https://github.com/mathiasbynens/dotfiles/blob/main/.macos,
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# defaults import com.apple.Terminal SeaShell
#
# #installs oh-my-zsh
# sh -c "$(curl -fsSL
# https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#
#
# #restart shell so path is ammended
# exec $SHELL
#
# #git?
# #xcode-select --install
#
# ## Tools
# #brew "bash-completion"
# #https://sourabhbajaj.com/mac-setup/BashCompletion/
#
#
# #vim
# #https://sourabhbajaj.com/mac-setup/Vim/
# #
#
# #micro
# #$curl https://getmic.ro | bash
#
#
#
# #zsh - random profile
# #oh my zsh
# #tree
# #screenfetch / neofetch
#



#########################################################################
#                               Shell - ZSH 							#
#########################################################################

echo "Installing ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# --------------------------- prev sh env setup -----------------------------
# #prep for creating links to open programs in terminal
# #makes a bin in usr dir and adds that path to the bash_profile
# mkdir ~/bin
# echo "PATH=\"~/bin:\${PATH}\"" >>  ~/.bash_profile
# echo "export PATH" >> ~/.bash_profile
#
# #Theme and previous rc or profile
# #https://github.com/Bash-it/bash-it/wiki/Themes
# ##https://github.com/Bash-it/bash-it
# # set up all themes, alternte between them for each new window, add
# transparency, opaqueness, colours on terminal
#
# #defaults program interfaces with default configurations of mac under
# # ~/Library/Preferences/, get the SeaShell.terminal file
# #more info https://wilsonmar.github.io/dotfiles/,
# https://github.com/mathiasbynens/dotfiles/blob/main/.macos,
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# defaults import com.apple.Terminal SeaShell
#
# #installs oh-my-zsh
# sh -c "$(curl -fsSL
# https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#
# #updates theme settings
# osascript <<EOD
# tell application "Terminal"
#         set default settings to settings set "SeaShell"
# end tell
# EOD
#
# #restart shell so path is ammended
# exec $SHELL
#
# ## Tools
# #brew "bash-completion"
# #https://sourabhbajaj.com/mac-setup/BashCompletion/
#
#
# #vim
# #https://sourabhbajaj.com/mac-setup/Vim/
# #
#
# #micro
# #$curl https://getmic.ro | bash
#
#
# #org-roam?
#
#
# #zsh - random profile
# #oh my zsh
# #tree
# #screenfetch / neofetch
#


###################### 
#   SYMLINK
###################### 

# symlink zshrc to home
ln -sf ${DOTFILES_DIR}/zsh/.zshrc ~/.zshrc

# symlink zsh_alias dir to home
ln -sf ${DOTFILES_DIR}/zsh/.zsh_alias  ~/.zsh_alias


