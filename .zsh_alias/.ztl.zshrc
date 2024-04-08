#!/bin/bash

#.ztl.zshrc

#change dirs
alias kstdir="cd ~/ztl"
alias kstndir="cd ~/ztl/NOTES/"
alias ksttdir="cd ~/ztl/TASKS/"
alias kstjdir="cd ~/ztl/JOURNAL/"
alias kstddir="cd ~/ztl/DOTFILES/"

#vim into dirs
alias kstrc="vim ~/.zsh_alias/.ztl.zshrc"
alias kstn="vim ~/ztl/NOTES/"
alias kstt="vim ~/ztl/TASKS/TODO.txt"
#alias ztln="vim ~/ztl/NOTES/"
#alias ztlt="vim ~/ztl/TASKS/TODO.txt"
function kstj()  {

    jrnlfilename="jrnl.$(date '+%y%m%d').txt"
    jrnldir="${HOME}/ztl/JRNL"
    if [ ! -f ${jrnldir}/${logfilename} ]; then
        echo "$jrnlfilename \n" >> $jrnlfilename
    fi
    vim ${jrnldir}/${jrnlfilename}

}

