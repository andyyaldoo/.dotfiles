HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# standard editor
export EDITOR="vim"
# Use emacs keybindings even if EDITOR is set to vim
bindkey -e

# Makes it easier to cd into directories because you don't have to type the word cd ever again
setopt auto_cd

# ---------------------------- direnv ----------------------------------
. ~/.zsh_plugins/direnv.zsh

# ---------------------------- golang -----------------------------------
. ~/.zsh_plugins/go.zsh

# ---------------------------- autocomplete---------------------------------
. ~/.zsh_plugins/autocomplete.zsh

# ---------------------------- Node Version Manager ---------------------------------
. ~/.zsh_plugins/nvm.zsh

# ---------------------------- Purity --------------------------------
. ~/.zsh_plugins/purity.zsh

# ---------------------------- Homebrew --------------------------------
. ~/.zsh_plugins/homebrew.zsh

# ---------------------------- tmux --------------------------------
. ~/.zsh_plugins/tmux.zsh

# ---------------------------- aliases ----------------------------------
for alias in ~/.zsh_aliases/*.sh; do
  source $alias
done

# Must be at the last line
# Why? Go here -> https://github.com/zsh-users/zsh-syntax-highlighting for answers
# ---------------------------- syntax hightlighting ---------------------------------
. ~/.zsh_plugins/syntax-highlighting.zsh
