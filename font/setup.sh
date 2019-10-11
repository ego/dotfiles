echo "font setup ..."

brew bundle --file ./Brewfile
brew cleanup

success "Successfully installed font."
exit
