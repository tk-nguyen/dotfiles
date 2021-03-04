[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.local/bin:$HOME/.poetry/bin:$HOME/.emacs.d/bin:$PATH"
export VISUAL="emacs"
export EDITOR=$VISUAL
export LC_ALL="en_US.UTF-8"
alias reddit="ttrv"
alias ls="exa -hg"

source /home/thainguyen/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /home/thainguyen/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /home/thainguyen/zsh-completions/zsh-completions.plugin.zsh

fpath+="/usr/share/zsh/vendor-completions"
autoload -U +X bashcompinit && bashcompinit
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

eval "$(starship init zsh)"
