#!/bin/zsh

# Import
defaults import com.apple.Terminal SeaShells.terminal
defaults import com.apple.Terminal Spacedust.terminal
defaults import com.apple.Terminal Wombat.terminal

#updates default theme settings
osascript <<EOD                 
tell application "Terminal"
        set themeName to "SeaShells"
        delay 1
        set default settings to settings set themeName 
end tell
EOD

#restart shell so path is ammended
exec $SHELL








