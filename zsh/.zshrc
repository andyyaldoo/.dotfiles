HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# standard editor
export EDITOR="vim"

# Use emacs keybindings even if EDITOR is set to vim
bindkey -e

# autoload -U promptinit; promptinit

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

# ---------------------------- zsh-clean --------------------------------
. ~/.zsh_plugins/zsh-clean.zsh

# ---------------------------- k8s --------------------------------
. ~/.zsh_plugins/k8s.zsh
#
# ---------------------------- direnv ----------------------------------
. ~/.zsh_plugins/direnv.zsh

# ---------------------------- aliases ----------------------------------
for alias in ~/.zsh_aliases/*.sh; do
  source $alias
done

bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word
# Must be at the last line
# Why? Go here -> https://github.com/zsh-users/zsh-syntax-highlighting for answers
# ---------------------------- syntax hightlighting ---------------------------------
. ~/.zsh_plugins/syntax-highlighting.zsh

eval "$(jenv init -)"

# To make `z` work
. `brew --prefix`/etc/profile.d/z.sh

# To make `fzf` work
if [[ ! -f  /Users/adharmawan/.fzf.zsh ]];
then
  $(brew --prefix)/opt/fzf/install
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

