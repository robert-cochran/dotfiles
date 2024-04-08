# lets files beginning with a . be matched without explicitly specifying the dot
setopt globdots 
unsetopt BEEP

[ -f ~/.zsh_alias/.default.zshrc ] && source ~/.zsh_alias/.default.zshrc

#EXPORTS
export EDITOR='vim'
# might be better to put these into a .zshenv instead
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

SOURCENAMES=(
    # java #only include once java has runtimes installed
    "alias"
    "aptrk" 
    "vim" 
    "python" 
    # ztl
    "fzf"
    #only include once fzf has been installed
    # antigen
    # ${HOME}/.config/broot/launcher/bash/br
) 

for name in "${SOURCENAMES[@]}"
do
    [ -f ~/.zsh_alias/."$name".zshrc ] && \
        source ~/.zsh_alias/."$name".zshrc
done

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

