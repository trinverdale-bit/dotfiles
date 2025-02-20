export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
alias vim="nvim"
alias suspend="systemctl suspend"
alias bnctl="brightnessctl set 1%"
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
