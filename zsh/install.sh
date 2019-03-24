#!/bin/sh
# Set zsh as the default shell
if [ $SHELL == "/usr/local/bin/zsh" ]; then
    echo "\nzsh is already the default shell. Moving on...\n"
else
    # check if /usr/local/bin/zsh is added to /etc/shells
    if [ ! -z $(cat /etc/shells | grep /usr/local/bin/zsh) ]; then
        echo "\n/usr/local/bin/zsh is added to /etc/shells. Moving on...\n"
    else
        # add /usr/local/bin/zsh to /etc/shells
        sudo -s 'echo' /usr/local/bin/zsh >> /etc/shells
        if [ ! $? -eq 0]; then
            echo "Failed. trying other method..."
            sudo bash -c "echo /usr/local/bin/zsh >> /etc/shells"
            if [ !$? -eq 0]; then
                echo "Failed. Aborting..."
                exit 1
            fi
        fi
    fi
    # Set zsh as default shell
    chsh -s /usr/local/bin/zsh
    if [ ! $? -eq 0 ]; then
            echo Operation failed
            exit 1
    fi
    echo "\nSuccessfully changed default shell to zsh. Moving on....\n"
fi

# Symlink ./.zshrc to ~/.zshrc
ln -s ./.zshrc ~/.zshrc

# Symlink aliases
ln -s ./aliases ~/.zsh_aliases

# Symlink .plugins
ln -s ./plugins ~/.zsh_plugins
