#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/janholec/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install colima
brew install \
  colima \
  docker \
  helm \
  minikube \
  wget \
  coreutils \
  azure-cli

brew install --cask \
  visual-studio-code \
  1password \
  iterm2

# Install docker-compose
brew install docker-compose
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
