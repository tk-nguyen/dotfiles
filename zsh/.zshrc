[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.local/bin:$HOME/.poetry/bin:$HOME/.emacs.d/bin:$HOME/.serverless/bin:$PATH"
export VISUAL="emacs"
export EDITOR=$VISUAL
export LC_ALL="en_US.UTF-8"
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=10000
export GLFW_IM_MODULE=ibus
setopt share_history

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
