#!/usr/bin/env sh

set -e  # exit when any command fails

echo "node setup ..."

source ../lib.sh

brew bundle install --file=Brewfile

echo "node: $(node --version)"
echo "npm: $(npm --version)"

success "Successfully installed node."
