#!/usr/bin/env sh

echo "node setup ..."

brew bundle --file ./Brewfile
brew cleanup

echo "$(node --version)"
echo "$(npm --version)"

success "Successfully installed node."
exit
