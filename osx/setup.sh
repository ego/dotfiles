#!/usr/bin/env sh

echo "osx setup ..."

# Install xcode
xcode-select --install

## Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# https://github.com/felixjung/dotfiles/blob/master/homebrew/Brewfile
brew bundle --file ./Brewfile
brew cleanup

success "Successfully installed osx."
exit
