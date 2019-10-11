#!/usr/bin/env sh

echo "docker setup ..."

brew bundle --file=Brewfile

echo "$(docker --version)"
echo "$(docker run hello-world)"
echo "$(docker-compose --version)"

success "Successfully installed docker."
exit
