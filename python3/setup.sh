echo "python3 setup ..."

# Install Python3
brew install python3
echo "$(python3 --version)"

brew install django-completion \
             pip-completion

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
