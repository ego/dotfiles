echo "font setup ..."

brew bundle --file ./Brewfile
brew update
brew upgrade
brew doctor
brew cleanup

success "Successfully installed font."
exit
