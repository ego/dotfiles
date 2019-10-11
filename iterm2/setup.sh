#!/usr/bin/env sh

echo "iterm2 setup ..."

brew bundle --file ./Brewfile
brew cleanup

# Fix login message in terminal
touch ~/.hushlogin

success "Successfully installed iterm2."
exit
