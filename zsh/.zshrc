setopt globdots # lets files beginning with a . be matched without 
                # explicitly specifying the dot.

[ -f ~/.zsh_alias/.default.zshrc ] && source ~/.zsh_alias/.default.zshrc

unsetopt BEEP

#exports
export EDITOR='vim'

#dir explorer
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias lla="ls -la"
alias tree="tree -C -a"
#source ${HOME}/.config/broot/launcher/bash/br

#Fixes LS_COLORS being configured with extra (read: bad) settings by 
#something (hunch is the zsh avit theme but haven't checked)
export LS_COLORS=
# show all ansi colours available
# for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f "
# ${${(M)$((i%6)):#3}:+$'\n'}; done

#zshrc configs
alias zource="source ~/.zshrc"
alias zrc="vim ~/.zshrc"
alias zalias="vim ~/.zsh_alias"

#vimtasks
#alias vtasks="vim ~/sandbox/vim.tasks/TASKS/tasks.txt"

# might be better to put these into a .zshenv instead
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
#export TERM=xterm-256color

SOURCENAMES=(
#    "java" #only include once java has runtimes installed
    "aptrk" 
    "vim" 
    "python" 
#    "ztl" 
#    "fzf" #only include once fzf has been installed
    #antigen
) 

for name in "${SOURCENAMES[@]}"
do
    [ -f ~/.zsh_alias/."$name".zshrc ] && \
        source ~/.zsh_alias/."$name".zshrc
done

# EXTRA ZSHRC_ALIAS'S
# check if ${HOME}/.extras.zshrc exists, if so load
[ -f ${HOME}/.extras.zshrc ] && source ${HOME}/.extras.zshrc


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
