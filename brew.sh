#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Casks

## Java is a prerequisite for many formulae
brew tap caskroom/versions
brew cask install java8
brew cask install java

brew cask install gitup
brew cask install google-chrome
brew cask install docker
brew cask install intellij-idea-ce
brew cask install visual-studio-code

# Formulae
brew install adr-tools
brew install awscli
brew install heroku-toolbelt
brew install git
brew install gradle
brew install groovy
brew install jenv
brew install maven
brew install mercurial
brew install node
brew install pipenv
brew install postgresql
brew install python
brew install python3
brew install rbenv ruby-build
brew install sbt
brew install scala

# Remove outdated versions from the cellar.
brew cleanup
