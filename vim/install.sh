mkdir -p $HOME/.vim/autoload

if [ ! -f $HOME/.vim/autoload/plug.vim ]; then
  curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  echo "vim plug already installed. Moving on..."
fi

if [ ! -f $HOME/.vim/colors/brogrammer.vim ]; then
  mkdir -p $HOME/.vim/colors
  curl -fLo $HOME/.vim/colors/brogrammer.vim https://raw.githubusercontent.com/marciomazza/vim-brogrammer-theme/master/colors/brogrammer.vim
else
 echo "brogrammer theme is already installed. Moving on..."
fi
ln -fs $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc

vim +'PlugInstall --sync' +qa
