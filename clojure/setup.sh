#!/usr/bin/env sh

set -e  # exit when any command fails

echo "clojure setup ..."

source ../lib.sh

brew bundle install --file=Brewfile

echo "$(java -version)"
echo "$(javac --version)"
echo "$(lein --version)"
echo "clojure: $(clojure -e '(clojure-version)')"

success "Successfully installed clojure."
