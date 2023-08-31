#!/bin/zsh

#####################################################################
# 					    Mac Default Settings						#
#####################################################################

#Show hidden files:
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal

# "Set a blazingly fast keyboard repeat rate"
# default was 2, custom setting suggested 0.02 but thats dumb fast
defaults write NSGlobalDomain KeyRepeat -int 1

# "Don’t animate opening applications from the Dock"
defaults write com.apple.dock launchanim -bool false

# "Disable opening and closing window animations"
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# echo "Enable AirDrop over Ethernet and on unsupported Macs running Lion"
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# #echo "Disable press-and-hold for keys in favor of key repeat"
#defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

