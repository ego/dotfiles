#!/usr/bin/env sh

set -e  # exit when any command fails

echo "rust setup ..."

source ../lib.sh

if [[ ! $(which rustc) ]]; then
	curl https://sh.rustup.rs -sSf | sh
	rustup update
fi

echo "$(rustc --version)"

brew bundle install --file=Brewfile

success "Successfully installed rust."
