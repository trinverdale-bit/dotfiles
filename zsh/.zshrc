export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
alias vim="nvim"
alias suspend="systemctl suspend"
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
export TERM=xterm-256color

[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
