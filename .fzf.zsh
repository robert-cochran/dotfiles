# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/mac/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/mac/.fzf/bin"
fi


#[ -f ~/.zsh_alias/.fzf.zshrc ] && source ~/.zsh_alias/.fzf.zshrc

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/mac/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/mac/.fzf/shell/key-bindings.zsh"
