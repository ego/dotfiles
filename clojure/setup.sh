echo "clojure setup ..."

brew cask install java \
				  java8
echo "$(javac --version)"

brew install clojure
brew upgrade clojure
echo "$(clojure --version)"

brew install leiningen
echo "$(lein --version)"
