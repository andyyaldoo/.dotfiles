# Because I am super lazy
alias l="ls"

# Most of the time you want to list all (including hidden files/folders) and want to show it as list and want to show it with distinct colors
alias ls="ls -lGa"

# to maintain color after grep
alias grep="grep --color=auto"

alias todos='grep --exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null'

# cd aliases
# TODO: I wonder if I still need to do this when I already have autocd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# zsh aliases
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias aliasconfig="vim ~/.zsh_aliases"
alias tmuxconfig="vim ~/.tmux.conf"
