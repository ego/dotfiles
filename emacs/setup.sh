#!/usr/bin/env sh

echo "emacs setup ..."

brew bundle --file ./Brewfile
brew cleanup

echo "$(emacs --version)"

success "Successfully installed emacs."
exit
