#!/usr/bin/env sh

# set -v  # prints shell input lines as they are read
set -e  # exit when any command fails

# brew update
# brew upgrade
# brew doctor
# brew cleanup

source lib.sh
cd -P ./osx; source setup.sh; cd -
# source font/setup.sh
# source iterm2/setup.sh
# source zsh/setup.sh
# source python3/setup.sh
# source rust/setup.sh
# source clojure/setup.sh
# source node/setup.sh
# source docker/setup.sh
# source emacs/setup.sh

# brew update
# brew upgrade
# brew doctor
# brew cleanup

# Links:
# https://sourabhbajaj.com/mac-setup/Docker/TipsAndTricks.html

success "Successfully installed."
exit
