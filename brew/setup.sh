#######################################################################
#                       Package Manager - Brew                        #
#######################################################################

if ! command -v brew > /dev/null; then

    echo "Install Brew via curl \n"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo "Install Homebrew Cask \n"
	brew tap homebrew/cask

	echo "[SYSTEM] Install Brew Bundle \n"
	brew tap Homebrew/bundle
else
    echo "[SYSTEM] Update brew \n"
    brew update
fi

# Brew Bundle
# I haven't verified wha tthis does yet but it looks like a list of all brew
# files downloaded. Which i guess ive already done with the other files
# --------------------------------------
# Then pass in the Brewfile location...
# brew bundle --file ~/.dotfiles/Brewfile
#
# # ...or move to the directory first.
# cd ~/.dotfiles && brew bundle
