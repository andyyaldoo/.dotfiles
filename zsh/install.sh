#!/bin/sh
# Set zsh as the default shell
if [ $SHELL == "/bin/zsh" ]; then
    echo "\nzsh is already the default shell. Moving on...\n"
else
    # check if /usr/local/bin/zsh is added to /etc/shells
    if [ ! -z $(cat /etc/shells | grep /bin/zsh) ]; then
        echo "\n/bin/zsh is added to /etc/shells. Moving on...\n"
    else
        # add /usr/local/bin/zsh to /etc/shells
        sudo sh -c 'echo /bin/zsh >> /etc/shells' 
        if [ ! $? -eq 0 ]; then
            echo "Failed. trying other method..."
            sudo bash -c "echo /bin/zsh >> /etc/shells"
            if [ !$? -eq 0 ]; then
                echo "Failed. Aborting..."
                exit 1
            fi
        fi
    fi
    # Set zsh as default shell
    chsh -s /bin/zsh
    if [ ! $? -eq 0 ]; then
            echo Operation failed
            exit 1
    fi
    echo "\nSuccessfully changed default shell to zsh. Moving on....\n"
fi

# Symlink ./.zshrc to ~/.zshrc
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc

# Symlink aliases
mkdir -p $HOME/.zsh_aliases
ln -s $HOME/.dotfiles/zsh/aliases/* $HOME/.zsh_aliases

# Symlink .plugins
mkdir -p $HOME/.zsh_plugins
ln -s $HOME/.dotfiles/zsh/plugins/* $HOME/.zsh_plugins
