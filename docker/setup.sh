#!/usr/bin/env sh

set -e  # exit when any command fails

echo "docker setup ..."

source ../lib.sh

brew bundle install --file=Brewfile

echo "$(docker --version)"
echo "$(docker run hello-world)"
echo "$(docker-compose --version)"

success "Successfully installed docker."
