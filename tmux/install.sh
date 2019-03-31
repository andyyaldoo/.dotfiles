# Install tmux

mkdir -p $HOME/.tmux/plugins/tpmm

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

ln -s $HOME/.dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
