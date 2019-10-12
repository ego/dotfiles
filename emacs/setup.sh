#!/usr/bin/env sh

set -e  # exit when any command fails

echo "emacs setup ..."

source ../lib.sh

brew bundle install --file=Brewfile
brew linkapps emacs-plus

echo "$(emacs --version)"

success "Successfully installed emacs."
