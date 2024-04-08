#!/bin/bash

# NOTE: I'm also using a .ignore file in the home dir, populated vim using
# :.!ls -a ~/
# then below those write the whitelisted dirs just as before but with a !
# prefix

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

##### FZF CONFIG
# NOTE: default fzf keybindings / shortcuts CTRL-T / CTRL-R / ALT-C
# NOTE: cmd **<tab> will run fzf and replace ** with fzf result
#       e.g. vim **<tab> will use fzf to find file to then open with vim


#__fzfcmd() {
#    [ -n "${TMUX_PANE-}" ] \
#    && { [ "${FZF_TMUX:-0}" != 0 ] || [ -n "${FZF_TMUX_OPTS-}" ]; } \
#    && echo "fzf-tmux ${FZF_TMUX_OPTS:--d${FZF_TMUX_HEIGHT:-40%}} -- " \
#    || echo "fzf"
#}

local __fzf_fd_default_search_pattern="."
local __fzf_default_search_dir="$HOME"
local __fzf_search_dir="$__fzf_default_search_dir"
local __fd_options="--hidden \
                    --follow \
                    --exclude .git \
                    --exclude node_modules"
local __fzf_default_cmd_fd="fd \
                            --type file \
                            --type symlink \
                            $__fd_options \
                            . $HOME"
local __fzf_default_cmd_git="git ls-files \
                            --cached \
                            --others \
                            --exclude-standard" 
# Use 'git ls-files' when inside GIT repo, or fd otherwise
# PREVIEW WINDOWS
local __fzf_default_preview_file="bat \
                                    --color=always \
                                    --line-range \
                                    :500 {}"
local __fzf_alt_preview_file="([[ -f {} ]] && \
                                (bat \
                                    --style=numbers \
                                    --color=always {} \
                                || cat {})\
                              )"
local __fzf_preview_dir="([[ -d {} ]] && (tree -C {} | less))"
local __preview_window_status_bar_style="\
        --preview-window up,1,border-horizontal \
        --color \
        'fg:#bbccdd,fg+:#ddeeff,bg:#334455,preview-bg:#223344,border:#778899'"

#FZF_DEFAULT
#export FZF_DEFAULT_COMMAND="$__fzf_default_cmd_git | $__fzf_default_cmd_fd"
                            #--hidden \
                            #--follow \
                            #--exclude .git \
export FZF_DEFAULT_COMMAND="fd \
                            --type file \
                            $__fd_options \
                            $__fzf_fd_default_search_pattern \
                            $__fzf_search_dir"
export FZF_DEFAULT_OPTS="\
        --height=60% \
        --multi \
        --layout=reverse \
        --info=inline \
        --border \
        --margin=1 \
        --padding=1 \
        --bind='?:toggle-preview' \
        --bind='ctrl-d:reload(fd --type file . ${HOME}/ztl)' \
        --bind='ctrl-a:select-all' \
        --bind='ctrl-y:execute-silent(echo {+} | pbcopy)' \
        --bind='ctrl-v:execute(echo {+} | xargs -o vim)'"
# NOTE: 
#        --preview '${__fzf_default_preview_file} \
#            || ${__fzf_preview_dir} \
#            || echo {} 2> /dev/null | head -200' \
# NOTE: from author: Since fzf is a general-purpose text filter rather than a
# file finder, it is not a good idea to add --preview option to your
# $FZF_DEFAULT_OPTS. 

#FZF_TMUX
export FZF_TMUX=1 #start in a tmux split pane
export FZF_TMUX_OPTS='-p 80%,80%' #-p80%,60%'
#export FZF_TMUX_HEIGHT='80%'

##### DIRECTORIES

# DIR PREVIEW WINDOW

local __fzf_preview_dir="([[ -d {} ]] && (tree -C {} | less))"
local __preview_window_status_bar_style="\
        --preview-window up,1,border-horizontal \
        --color \
        'fg:#bbccdd,fg+:#ddeeff,bg:#334455,preview-bg:#223344,border:#778899'"
# change directory
fzf_change_directory() {
    local directory=$(
      fd --type d | \
      $(__fzfcmd) --query="$1" --no-multi --select-1 --exit-0 \
          --preview 'tree -C {} | head -100'
      )
    if [[ -n $directory ]]; then
        cd "$directory"
    fi
}
alias fcd='fzf_change_directory'

#FZF_ALT_C
export FZF_ALT_C_COMMAND="fd \
        --type directory \
        $__fd_options \
        $__fzf_fd_default_search_pattern \
        $__fzf_default_search_dir"
export FZF_ALT_C_OPTS="\
        --border sharp \
        --layout reverse \
        --prompt '∷ ' \
        --pointer ▶ \
        --marker ⇒ \
        --preview '([[ -d {} ]] && (tree -C {} | less))' \
        --color \
            'bg+:#3B4252,bg:#2E3440,spinner:#81A1C1,hl:#616E88,fg:#D8DEE9,header:#616E88,info:#81A1C1,pointer:#81A1C1,marker:#81A1C1,fg+:#D8DEE9,prompt:#81A1C1,hl+:#81A1C1'"

# SEARCH DIRECTORIES
alias sd="cd ~ && cd \$(find * -type d | $(__fzfcmd))"

##### FILES

# FILE PREVIEW
local __file_preview_window='bat --color=always --line-range :500 {}'
#        --preview '${__fzf_default_preview_file} \
#            || ${__fzf_preview_dir} \
#            || echo {} 2> /dev/null | head -200' \
# fzf find file and open in editor
# bat --color=always --line-range :500 {}

fzf_find_edit() {
    local file=$(
      $(__fzfcmd) \
            --query="$1" \
            --no-multi \
            --select-1 \
            --exit-0 \
            --preview 'bat --color=always --line-range :500 {}'
      )
    if [[ -n $file ]]; then
        $EDITOR "$file"
    fi
}
alias ffe='fzf_find_edit'

# TODO SO CLOSE, not sure wju but exporting the new search dir doesn't seem to
# effect where ztl starts from for this
# zfz + ztl (popup at ztl dir, runs vim, closes fzf)
      #$(__fzfcmd) \
fzf_find_edit_ztl() {
    #export FZF_SEARCH_DIR="${HOME}/ztl"

    local file=$(
      $(__fzfcmd) \
            --query="$1" \
            --no-multi \
            --select-1 \
            --exit-0 \
            --preview 'bat --color=always --line-range :500 {}'
      )
    if [[ -n $file ]]; then
        $EDITOR "$file"
    fi
}
alias ffe.ztl='fzf_find_edit_ztl'

# zfz + ~ (popup at ~ dir, runs vim, closes fzf)
fzf_find_edit_home() {
    local file=$(
      $(__fzfcmd) \
            --query="$1" \
            --no-multi \
            --select-1 \
            --exit-0 \
            --preview 'bat --color=always --line-range :500 {}'
      )
    if [[ -n $file ]]; then
        $EDITOR "$file"
    fi
}
alias ffe.home='fzf_find_edit_home'

#FZF_CTRL_T
#export FZF_CTRL_T_COMMAND="mdfind -onlyin . -name ."
# Apply the default search command to CTRL-T as well (i.e. fd and its params)
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_CTRL_T_OPTS="
        --border sharp \
        --layout reverse \
        --prompt '∷ ' \
        --pointer ▶ \
        --marker ⇒ \
        --preview 'bat --color=always --line-range :500 {}'"
# https://sourcegraph.com/github.com/junegunn/fzf/-/blob/ADVANCED.md#color-themes
# provides heaps of colour options


##### SH/COMMAND HISTORY

# SH CMD PREVIEW WINDOW
# --preview 'bat --color=always  --line-range  :500 {}'"
#'fg:#bbccdd,fg+:#ddeeff,bg:#334455,preview-bg:#223344,border:#778899'"

#FZF_CTRL_R
#export FZF_CTRL_R_COMMAND=""
export FZF_CTRL_R_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_R_OPTS="\
        --border sharp \
        --preview='echo {}' \
        --preview-window=right,50%,wrap \
        --color \
        'fg:#bbccdd,fg+:#ddeeff,bg:#380101,preview-bg:#223344,border:#7788dd'"

#directly executing commands from ctrl-r
fzf-history-widget-accept() {
    fzf-history-widget
    zle accept-line
}
zle     -N     fzf-history-widget-accept
bindkey '^X^R' fzf-history-widget-accept

##### FILE CONTENT SEARCH

alias fzf.findfile="${__rg_curr_dir}"
# FILE CONTENT SEARCH
function __rg_curr_dir() {
    rg --color=always --line-number --no-heading --smart-case "${*:-}"
}
function __rg() {
    echo $1
    rg --color=always --line-number --no-heading --smart-case "${*:-}" "$1"
}
fif() {
     if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
     rg --files-with-matches --no-messages "$1" | \
     fzf --preview "highlight -O \
       ansi -l {} 2> /dev/null | \
       rg --colors 'match:bg:yellow' \
       --ignore-case
       --pretty \
       --context 10 '$1' || \
       rg --ignore-case --pretty --context 10 '$1'
       {}"
}

##### COMPLETION
#   NOTE:   completion is using **<TAB> to fill with search result
# Use ~~ as the trigger sequence instead of the default **
#export FZF_COMPLETION_TRIGGER='~~'

# Options to fzf command
#export FZF_COMPLETION_OPTS='--border --info=inline'

##### AESTHETIC
# FZF COLOURS
# https://github.com/junegunn/fzf/blob/master/ADVANCED.md#generating-fzf-color-theme-from-vim-color-schemes
#fzf --height 40% --layout reverse --info inline --border \
#    --preview 'file {}' --preview-window up,1,border-horizontal \
#    --bind 'ctrl-/:change-preview-window(50%|hidden|)' \
#    --color 'fg:#bbccdd,fg+:#ddeeff,bg:#334455,preview-bg:#223344,
#           border:#778899'
# white
# https://sourcegraph.com/github.com/junegunn/fzf/-/blob/ADVANCED.md#color-themes
#    --color 'bg+:#D9D9D9,bg:#E1E1E1,border:#C8C8C8,spinner:#719899,
#           hl:#719872,fg:#616161,header:#719872,info:#727100,
#           pointer:#E12672,marker:#E17899,fg+:#616161,preview-bg:#D9D9D9,
#           prompt:#0099BD,hl+:#719899'"

##### SPELLCHECK
alias spellcheck="cat /usr/share/dict/words | $(__fzfcmd) --multi --reverse"

##### EXAMPLES
#export FZF_DEFAULT_OPTS='--reverse --border --exact --height=50%'
# FZF TMUX EXAMPLE
# |
#  fzf-tmux -p --ansi \
#      --color "hl:-1:underline,hl+:-1:underline:reverse" \
#      --delimiter : \
#      --preview 'bat --color=always {1} --highlight-line {2}' \
#      --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
#      --bind 'enter:become(vim {1} +{2})'

# ANOTHER DEFAULT OPTS EXAMPLE TO COPY FROM
#export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi
#--inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a
#binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null |
#head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat
#--style=numbers {} || less -f
#{}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo
#{+} | pbcopy)'"
