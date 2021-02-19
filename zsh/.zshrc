eval "$(LC_ALL='en_US.UTF-8' starship init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.local/bin:$HOME/.poetry/bin:$HOME/.cargo/bin:$PATH"
export VISUAL="vim"
export EDITOR=$VISUAL
export LC_ALL="en_US.UTF-8"
alias reddit="ttrv"
alias ls="exa -hg"

source /home/thainguyen/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/thainguyen/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/thainguyen/zsh-completions/zsh-completions.plugin.zsh

fpath+="/usr/share/zsh/vendor-completions"
autoload -U +X bashcompinit && bashcompinit
