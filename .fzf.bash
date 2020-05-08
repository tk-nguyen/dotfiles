# Setup fzf
# ---------
if [[ ! "$PATH" == */home/thainguyen/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/thainguyen/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/thainguyen/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/thainguyen/.fzf/shell/key-bindings.bash"
