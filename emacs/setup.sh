#!/usr/bin/env sh

set -e  # exit when any command fails

echo "emacs setup ..."

source ../lib.sh

brew bundle install --file=Brewfile
brew link emacs
# ln -s /usr/local/Cellar/emacs-plus/26.3/Emacs.app /Applications
# ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications
# ln -s /usr/local/opt/emacs-plus/bin/emacs /usr/local/bin/emacs-27

echo "$(emacs --version)"

# Emacs python-mode
pip3 install -Ur requirements.txt > /dev/null 2>&1

success "Successfully installed emacs."
