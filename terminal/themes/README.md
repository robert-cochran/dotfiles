# Summary: 

    Installs the terminal theme(s) file(s) and sets one as default

# Overview:

    Terminal.app uses .Terminal files to store the theme properties. 
    To see what settings are currently in your terminal run:
            
    defaults read com.apple.terminal

    Note: This file lives in ~/Library/Preferences/com.apple.terminal.plist
    whether you read from com.apple.terminal or com.apple.terminal.plist doesnt 
    matter.

    Your current terminal.app settings should be stored under 
    com.apple.terminal.plist. 
    A backup is provided in this folder. To write the contents to the current 
    plist use:

    defaults write com.apple.Terminal com.apple.terminal.plist

    The defaults import/export are for binaries apparently, so we need to 
    defaults read/write its in human readable format.

    To see the contents of your .Terminal file run:that

            defaults read com.apple.Terminal [theme].Terminal
            
    where [theme] is replaced with the theme name.
    Import the theme into Terminal.app using the import statement:

            defaults import com.apple.Terminal SeaShell.terminal

    This should add it to the .plist file that stores all the terminal settings. 
    You can check its been added by reading from the com.apple.terminal file 
    again.

    Note: The [theme].Terminal file may need to be added in the 
    ~/Library/Preferences/ folder before importing.

    To create a terminal file and a list of premade files see: 

        https://github.com/lysyi3m/macos-terminal-themes
        https://github.com/mbadolato/iTerm2-Color-Schemes

    Further info can be found here:

        https://wilsonmar.github.io/dotfiles/
        https://github.com/mathiasbynens/dotfiles/blob/main/.macos

    Themes used are here:
        https://github.com/lysyi3m/macos-terminal-themes
        https://github.com/mbadolato/iTerm2-Color-Schemes
        https://iterm2colorschemes.com/

#########################################
#          MAC TERMINAL THEMES          #
#########################################

defaults program interfaces with default configurations of mac under

    ~/Library/Preferences/, get the SeaShell.terminal file

more info https://wilsonmar.github.io/dotfiles/, 

    https://github.com/mathiasbynens/dotfiles/blob/main/.macos, 
    https://github.com/mathiasbynens/dotfiles/blob/master/.macos

updates theme, settings, and previous rc or profile

    https://github.com/Bash-it/bash-it/wiki/Themes
    https://github.com/Bash-it/bash-it

set up all themes, alternte between them for each new window, 
add transparency, opaqueness, colours on terminal


seashells, wombat, spacedust themes taken from:  https://github.com/zdj/themes

NOTE: .plist files contain an export of terminal settings (e.g. enabling option
        key as meta key, disable visible/audio bell, etc...)

