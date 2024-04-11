# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/mac/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}${HOME}/.fzf/bin"
fi


#[ -f ~/.zsh_alias/.fzf.zshrc ] && source ~/.zsh_alias/.fzf.zshrc

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${HOME}/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "${HOME}/.fzf/shell/key-bindings.zsh"
