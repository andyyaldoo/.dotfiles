HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# standard editor
export EDITOR="vim"
# Use emacs keybindings even if EDITOR is set to vim
bindkey -e

# Makes it easier to cd into directories because you don't have to type the word cd ever again
setopt auto_cd

# autoload -U promptinit; promptinit

# ---------------------------- direnv ----------------------------------
. ~/.zsh_plugins/direnv.zsh

# ---------------------------- golang -----------------------------------
. ~/.zsh_plugins/go.zsh

# ---------------------------- autocomplete---------------------------------
. ~/.zsh_plugins/autocomplete.zsh

# ---------------------------- Node Version Manager ---------------------------------
. ~/.zsh_plugins/nvm.zsh

# ---------------------------- Homebrew --------------------------------
. ~/.zsh_plugins/homebrew.zsh

# ---------------------------- tmux --------------------------------
. ~/.zsh_plugins/tmux.zsh

. ~/.zsh_plugins/k8s.sh

# ---------------------------- aliases ----------------------------------
for alias in ~/.zsh_aliases/*.sh; do
  source $alias
done

# Must be at the last line
# Why? Go here -> https://github.com/zsh-users/zsh-syntax-highlighting for answers
# ---------------------------- syntax hightlighting ---------------------------------
. ~/.zsh_plugins/syntax-highlighting.zsh


eval "$(jenv init -)"

export LC_ALL=en_US.UTF-8

source <(antibody init)

antibody bundle BrandonRoehl/zsh-clean

source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1


. `brew --prefix`/etc/profile.d/z.sh
