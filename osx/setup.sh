#!/usr/bin/env sh

echo "osx setup ..."

# Install xcode
if [[ ! $(xcode-select -p) ]]; then
    xcode-select --install
fi

## Install homebrew
if [[ ! $(which brew) ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# https://github.com/felixjung/dotfiles/blob/master/homebrew/Brewfile
brew bundle --file=Brewfile

success "Successfully installed osx."
exit
