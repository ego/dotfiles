#!/usr/bin/env sh

set -e  # exit when any command fails

echo "zsh setup ..."

source ../lib.sh

brew bundle install --file=Brewfile

echo $($SHELL --version)

# Make zsh default shell
if [[ ! $SHELL == "/bin/zsh" ]]; then
    chsh -s /bin/zsh
fi

# oh-my-zsh
if [[ ! -s $HOME/.oh-my-zsh/oh-my-zsh.sh ]]; then
	echo "oh-my-zsh setup ..."
	curl -sSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
	success "Successfully installed oh-my-zsh."
fi

echo "copy .zshenv ..."
cp .zshenv $HOME/

echo "copy .zshrc ..."
cp .zshrc $HOME/

echo "copy zplug.sh ..."
cp .zplug $HOME/

success "Successfully installed zsh."
