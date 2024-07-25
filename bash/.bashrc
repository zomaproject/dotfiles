eval "$(starship init bash)"

alias ls='lsd --color=auto'
alias cat='bat'



alias web='~/AppData/Local/JetBrains/Toolbox/scripts/webstorm.cmd'
alias rider='~/AppData/Local/JetBrains/Toolbox/scripts/rider.cmd'
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
source ~/.config/bash/fzf-git.sh
#source ~/.config/bash/fzf-tmux.sh
