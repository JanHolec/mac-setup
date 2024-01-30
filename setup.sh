#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/janholec/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install colima
brew install colima

# Install docker cli
brew install docker

# Install minikube
brew install minikube

# Install utils
brew install wget

# Install Helm
brew install helm

# Install coreutils
brew install coreutils

# Install docker-compose
brew install docker-compose
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

# Install Azure CLI
brew install azure-cli

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install --cask \
  visual-studio-code

brew install --cask iterm2
