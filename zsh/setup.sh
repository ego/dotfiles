#!/usr/bin/env sh

echo "zsh setup ..."

brew bundle --file=Brewfile

echo $($SHELL --version)
# Make zsh default shell
chsh -s $(which zsh)

cp ./zshenv $HOME/.zshenv

source ../oh-my-zsh/setup.sh

# add custom zshrc.sh
cp zshrc.sh $HOME/.zshrc.sh
echo "source $(HOME)/.zshrc.sh" >> $HOME/.zshrc

# Load zplug
source ./zplug.sh

success "Successfully installed zsh."
exit
