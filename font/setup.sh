echo "font setup ..."

set -e  # exit when any command fails

source ../lib.sh

brew bundle install --file=Brewfile
success "Successfully installed font."
