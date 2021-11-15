#!/bin/sh

# Homebrew

if test ! $(which brew); then
  echo "\nLooks like you don't have homebrew. Installing it for you...\n"
  echo ""
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi


if test $(which brew); then
    echo "\nYou have brew installed. Moving on..."
fi

brew bundle --file=$HOME/.dotfiles/brew/Brewfile
