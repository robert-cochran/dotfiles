#######################################################################
#                           Brew Cask Installs                        #
#######################################################################

#Sets up all the apps using brew and links to terminal where needed

#apps=(
    # 1password-cli # cli is misnomer, actually a cask
	# adblock, 
	# alacritty
	# basictex (few hundred mb),
    # cool-retro-term
	# docker
	# edex-ui
	# firefox
	#   - plugins (adblock, bitwarden, youtube playback speed control,
    #   - https everywhere, picture in picutre, clear-url, vimium)
	# gemini
    # intellij-idea
    # iterm2
    # limechat
	# mactex (several gb) https://sourabhbajaj.com/mac-setup/LaTeX/
    # mulvid
    # orion
    # pycharm-ce
    # qutebrowser
	# spotify
	# steam
	# strongvpn
	# sublime-text
    # terminator
	# temurin
	# temurin8
    # temurin17
    # thunderbird (replace with mutt)
	# tor
	# vagrant
	# visual-studio-code
	# vlc
	# vscodium
    # xterm
#)


#for app in ${apps[@]}; do
#	echo "Installing $app"
#	brew install --cask $app
#
#	if [ $app = "sublime" ]
#	then
#        #creates link since sublime doesnt do this apparently?
#        #also do i even need in install sublime anymore?
#		ln "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" \
#            ~/bin/subl
#	fi
#done



