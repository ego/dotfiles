#!/usr/bin/env sh

set -e  # exit when any command fails

echo "iterm2 setup ..."

source ../lib.sh

brew bundle install --file=Brewfile

# Fix login message in terminal
touch ~/.hushlogin

success "Successfully installed iterm2."
