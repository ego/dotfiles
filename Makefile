SHELL = /bin/zsh

all: setup osx font dev zsh iterm2 python3 rust clojure node docker emacs
setup:
	./setup
osx: 
	cd -P ./osx; source setup.sh; cd -
font:
	cd -P ./font; source setup.sh; cd -
dev:
	cd -P ./dev; source setup.sh; cd -
zsh:
	cd -P ./zsh; source setup.sh; cd -
iterm2:
	cd -P ./iterm2; source setup.sh; cd -
python3:
	cd -P ./python3; source setup.sh; cd -
rust:
	cd -P ./rust; source setup.sh; cd -
clojure:
	cd -P ./clojure; source setup.sh; cd -
node:
	cd -P ./node; source setup.sh; cd -
docker:
	cd -P ./docker; source setup.sh; cd -
emacs:
	cd -P ./emacs; source setup.sh; cd -
help:
	@echo "  all        install all formulae"
	@echo "  setup      install pre-requirements"
	@echo "  osx        install base osx formulae"
	@echo "  font       install font"
	@echo "  dev        install development formulae"
	@echo "  zsh        install zsh"
	@echo "  iterm2     install iterm2"
	@echo "  python3    install python3"
	@echo "  rust       install rust"
	@echo "  clojure    install java/java8 and clojure"
	@echo "  node       install node"
	@echo "  docker     install docker"
	@echo "  emacs      install emacs"
	@echo "  help       help print this message"

.PHONY: all help osx dev zsh iterm2 python3 rust clojure node docker emacs
