#!/usr/bin/env sh

echo "python3 setup ..."

brew bundle --file ./Brewfile
brew cleanup

echo "$(python3 --version)"

pip3 install --upgrade setuptools
pip3 install --upgrade pip
echo "$(pip --version)"

pip3 install -r -U ./requirements.txt

echo "$(virtualenv --version)"
echo "$(ipython --version)"
echo "$(aws-shell --version)"

success "Successfully installed python3."
exit
