# Install tmux


if [ ! -d $HOME/.tmux/plugins/tpm ]; then
  mkdir -p $HOME/.tmux/plugins/tpm
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
else
  echo "tmux package manager (TPM) is already installed. Moving on..."
fi

ln -fs $HOME/.dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
