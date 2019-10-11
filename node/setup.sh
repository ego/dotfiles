#!/usr/bin/env sh

echo "node setup ..."

brew bundle --file=Brewfile

echo "$(node --version)"
echo "$(npm --version)"

success "Successfully installed node."
exit
