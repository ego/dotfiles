#!/usr/bin/env sh

echo "docker setup ..."

brew bundle --file ./Brewfile
brew update
brew upgrade
brew doctor
brew cleanup

echo "$(docker --version)"
echo "$(docker run hello-world)"
echo "$(docker-compose --version)"

success "Successfully installed docker."
exit
