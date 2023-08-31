#######################################################################
#                           Brew CLI Installs                         #
#######################################################################

# TODO
	# ssh key gen?

## Dotfiles
#DOTFILES_PATH='${HOME}'
#dotfiles=(
#	".alacritty"
#	".bash_profile"
#	".gitconfig"
#	".vimrc"
#	".tmux_conf"
#	".dotf.weechat"
#)


allPrograms=(
    # Alacritty
	# "bash-completion"	# https://sourabhbajaj.com/mac-setup/BashCompletion/
	# beeper
	"bombadillo"
	"broot"
	# brotli
    # bubbles # tui
	# bubbletea # tui
    # buku
	# colima
	"curl"
	# finger
    # fzf
	"gemini"
	"glow" 
	# Go
	# gopher, 
	# gpg-tui # key manager
	# graphviz
	"git"
	# httpie
    # irc
	# irssi
	# irc
	# Java
	# jq
	# Julia
	# k9s
    # lipgloss #tui
	# lynx
	# matrix
	# mastodon
	# markdown-tui
	# micro # binary only tui-text-editor
	# mutt
	# ncurses
	# "neofetch" 
	# neovim
    # nvim
	# nnn
	"node"
	"org-roam" 
	# pandoc
    # pyenv
	"python" 
	# qute
	# ranger
	# ripgrep
	# tig
	# tilde.town
	# tor
	# tree
	# tmux
	"vim" #https://sourabhbajaj.com/mac-setup/Vim/
	# vim-floaterm
	# vim-terminal
	# w3m
	"weechat"
	"wget"
	# xq
)


## Shell Environment
# prep for creating links to open programs in terminal				
# makes a bin in usr dir and adds that path to the bash_profile
#mkdir ~/bin
#echo "PATH=\"~/bin:\${PATH}\"" >>  ~/.bash_profile
#echo "export PATH" >> ~/.bash_profile

# check xcode-select --install has been run already
# check brew's installed


for program in ${programs[@]}; do
	echo "Installing $program"
	brew install $program
done


