#   Define Colours
#   ------------------------------------------------------------
	C_DEFAULT="\[\033[m\]"
	C_WHITE="\[\033[1m\]"
	C_BLACK="\[\033[30m\]"
	C_RED="\[\033[31m\]"
	C_GREEN="\[\033[32m\]"
	C_YELLOW="\[\033[33m\]"
	C_BLUE="\[\033[34m\]"
	C_PURPLE="\[\033[35m\]"
	C_CYAN="\[\033[36m\]"
	C_LIGHTGRAY="\[\033[37m\]"
	C_DARKGRAY="\[\033[1;30m\]"
	C_LIGHTRED="\[\033[1;31m\]"
	C_LIGHTGREEN="\[\033[1;32m\]"
	C_LIGHTYELLOW="\[\033[1;33m\]"
	C_LIGHTBLUE="\[\033[1;34m\]"
	C_LIGHTPURPLE="\[\033[1;35m\]"
	C_LIGHTCYAN="\[\033[1;36m\]"
	C_BG_BLACK="\[\033[40m\]"
	C_BG_RED="\[\033[41m\]"
	C_BG_GREEN="\[\033[42m\]"
	C_BG_YELLOW="\[\033[43m\]"
	C_BG_BLUE="\[\033[44m\]"
	C_BG_PURPLE="\[\033[45m\]"
	C_BG_CYAN="\[\033[46m\]"
	C_BG_LIGHTGRAY="\[\033[47m\]"

#   Change Prompt
#   ------------------------------------------------------------
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWUNTRACKEDFILES=true
    #export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$ "
    #export PS1="\n$C_LIGHTGREEN\u$C_DARKGRAY@$C_BLUE\h $C_DARKGRAY: $C_LIGHTYELLOW\w\n$C_DARKGRAY\$$C_DEFAULT "
    export PS1="$C_CYAN\u$C_DEFAULT@$C_GREEN \[\033[33;1m\]\w$C_DEFAULT :\$(git branch 2>/dev/null | grep '^*' | colrm 1 2) \n$C_DARKGRAY\$$C_DEFAULT "
    export PS2="| => "

    alias ls="ls -la"


#   Set Paths
#   ------------------------------------------------------------
    export PATH="${HOME}/Library/Python/2.7/bin:$PATH"
    export PATH="/usr/bin/python:$PATH"



#   Set Default Editor (change 'Vim' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/vim

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=3k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
   export CLICOLOR=1
   export LSCOLORS=ExFxBxDxCxegedabagacad


#	export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$ "

# export PS1="\n$C_LIGHTGREEN\u$C_DARKGRAY@$C_BLUE\h $C_DARKGRAY: $C_LIGHTYELLOW\w\n$C_DARKGRAY\$$C_DEFAULT "
# export PS1="$C_CYAN\u$C_DEFAULT@$C_GREEN \[\033[33;1m\]\w$C_DEFAULT :\$(git branch 2>/dev/null | grep '^*' | colrm 1 2) \n$C_DARKGRAY\$$C_DEFAULT "
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$ "


#	export PS2="| => "


#  export CLICOLOR=1
#  export LSCOLORS=ExFxBxDxCxegedabagacad

#   Change Prompt
#   ------------------------------------------------------------
#    export GIT_PS1_SHOWDIRTYSTATE=true
#    export GIT_PS1_SHOWUNTRACKEDFILES=true


#  alias lla="ls -la"

