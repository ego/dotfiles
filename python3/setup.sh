#!/usr/bin/env sh

set -e  # exit when any command fails

echo "python3 setup ..."

source ../lib.sh

brew bundle install --file=Brewfile

echo "$(python3 --version)"

pip3 install --upgrade setuptools > /dev/null 2>&1
pip3 install --upgrade pip > /dev/null 2>&1
echo "$(pip --version)"

pip3 install -Ur requirements.txt > /dev/null 2>&1

echo "virtualenv: $(virtualenv --version)"
echo "ipython: $(ipython --version)"
# echo "$(aws-shell --version)"

success "Successfully installed python3."
