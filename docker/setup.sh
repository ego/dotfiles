echo "docker setup ..."

# Install docker https://docs.docker.com/docker-for-mac/
brew install docker
brew cask install docker
brew install docker-compose

brew install docker-completion \
			 docker-compose-completion

echo "$(docker --version)"
echo "$(docker run hello-world)"
echo "$(docker-compose --version)"
