#!/usr/bin/env sh

echo "python3 setup ..."

brew bundle --file ./Brewfile
brew update
brew upgrade
brew doctor
brew cleanup

echo "$(python3 --version)"

pip3 install --upgrade setuptools
pip3 install --upgrade pip
echo "$(pip --version)"

pip3 install virtualenv
echo "$(virtualenv --version)"

pip3 install 'ipython[zmq,qtconsole,notebook,test]'
echo "$(ipython --version)"

pip3 install aws-shell
echo "$(aws-shell --version)"

pip3 install autopep8 pep8 pylint

success "Successfully installed emacs."
exit
