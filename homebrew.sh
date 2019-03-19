#!/bin/sh

# Homebrew

if test ! $(which brew); then
  echo "\nLooks like you don't have homebrew. Installing it for you...\n"
  echo ""
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


if test $(which brew); then
    echo "\nYou have brew installed. Moving on...\n"

    # tap caskroom/cask
    # brew tap caskroom/cask
fi

#exit 0
return
