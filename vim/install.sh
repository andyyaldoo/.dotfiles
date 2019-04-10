mkdir -p $HOME/.vim/autoload

if [ -z $HOME/.vim/autoload/plug.vim ]; then
  curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  echo "vim plug already installed. Moving on..."
fi

ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
