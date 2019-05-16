# Install tmux


if [ -z $HOME/.tmux/plugins/tpm ]; then
  mkdir -p $HOME/.tmux/plugins/tpm
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
else
  echo "tmux package manager (TPM) is already installed. Moving on..."
fi

ln -s $HOME/.dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
