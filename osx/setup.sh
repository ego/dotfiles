#!/usr/bin/env sh

set -e  # exit when any command fails

echo "osx setup ..."

source ../lib.sh

# Install xcode
if [[ ! $(xcode-select -p) ]]; then
    xcode-select --install
fi

## Install homebrew
if [[ ! $(which brew) ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# https://github.com/felixjung/dotfiles/blob/master/homebrew/Brewfile
brew bundle install --file=Brewfile
success "Successfully installed osx."
