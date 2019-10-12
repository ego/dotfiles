#!/usr/bin/env sh

set -e  # exit when any command fails

echo "dev setup ..."

source ../lib.sh

brew bundle install --file=Brewfile
success "Successfully installed dev."
