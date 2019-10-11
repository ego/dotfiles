#!/usr/bin/env sh

echo "rust setup ..."

curl https://sh.rustup.rs -sSf | sh
rustup update
echo "$(rustc --version)"

brew bundle --file=Brewfile

success "Successfully installed rust."
exit
