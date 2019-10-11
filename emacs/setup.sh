#!/usr/bin/env sh

echo "emacs setup ..."

brew bundle --file ./Brewfile
echo "$(emacs --version)"

brew update
brew upgrade
brew doctor
brew cleanup

success "Successfully installed emacs."
exit
