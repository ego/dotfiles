#!/usr/bin/env sh

echo "clojure setup ..."

brew bundle --file=Brewfile

echo "$(javac --version)"
echo "$(clojure --version)"
echo "$(lein --version)"

success "Successfully installed clojure."
exit
