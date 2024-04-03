# If you come from bash you might have to change your $PATH.                    
# export PATH=$HOME/bin:/usr/local/bin:$PATH                                    
# export  PATH="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/bin:$PATH"
                                                                                
export ZSH="$HOME/.oh-my-zsh"                                                   
DOTFILES="$HOME/.dotfiles"

DISABLE_AUTO_TITLE="true"
ZSH_THEME="random"                                                              
ZSH_THEME_RANDOM_QUIET="true"
# a theme from this variable instead of looking in $ZSH/themes/                 
ZSH_THEME_RANDOM_CANDIDATES=(  
#    "avit"
#    "frisk"
     "frontcube"
#    "gnzh"
#    "imajes"
#    "jispwoso"
#    "junkfood"
)

# to know which specific one was loaded, run: echo $RANDOM_THEME                
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes                            
                                                                                
# Uncomment the following line to use hyphen-insensitive completion.            
# Case-sensitive completion must be off. _ and - will be interchangeable.       
# HYPHEN_INSENSITIVE="true"                                                     
                                                                                
# Uncomment one of the following lines to change the auto-update behavior       
# zstyle ':omz:update' mode disabled  # disable automatic updates               
 zstyle ':omz:update' mode auto      # update automatically without asking      
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time 
                                                                                
# Uncomment the following line to change how often to auto-update (in days).    
# zstyle ':omz:update' frequency 13                                             
                                                                                
# Uncomment the following line if pasting URLs and other text is messed up.     
# DISABLE_MAGIC_FUNCTIONS="true"                                                
                                                                                
# Uncomment the following line to disable auto-setting terminal title.          
# DISABLE_AUTO_TITLE="true"                                                     
                                                                                
# Uncomment the following line to enable command auto-correction.               
# ENABLE_CORRECTION="true"                                                      
                                                                                
# Uncomment the following line if you want to disable marking untracked files   
# under VCS as dirty. This makes repository status check for large repositories 
# much, much faster.                                                            
# DISABLE_UNTRACKED_FILES_DIRTY="true"                                          
                                                                                
# Uncomment the following line if you want to change the command execution time 
# stamp shown in the history command output.                                    
# You can set one of the optional three formats:                                
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd" 
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    #colorize
#    zsh-autosuggestions
    ##z
    ##fz
    ##you-should-use
#    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME

# ripgrep
#alias zc='rg  . | fzf | awk -F: '\''{print $1}'\'' | xargs -l code'
#alias zv='rg  . | fzf | awk -F: '\''{print $1}'\'' | xargs -l vim'
#alias zp='rg . | fzf'

#tmux
# Activates tmux session by default
#tmux attach &> /dev/null
#
#if [[ ! $TERM =~ screen ]]; then
    #exec tmux
#fi
