if [[ ! -d $HOME/zsh-clean ]]; then
  git clone git@github.com:BrandonRoehl/zsh-clean.git $HOME/zsh-clean
fi

autoload -U promptinit
fpath+=$HOME/zsh-clean
promptinit

prompt clean
