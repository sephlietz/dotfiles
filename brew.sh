#!/usr/bin/env zsh

set -e

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

brew tap homebrew/cask-versions

brew install --cask gitup
brew install --cask google-chrome
brew install --cask intellij-idea-ce
brew install --cask miniconda
brew install --cask visual-studio-code

# Formulae
brew install adr-tools
brew install awscli
brew install corretto@8
brew install corretto@11
brew install corretto@17
brew install corretto@19
brew install git
brew install gradle
brew install groovy
brew install jenv
brew install maven
brew install mercurial
brew install node
brew install pipenv
brew install podman-desktop
brew install postgresql
brew install python
brew install python3
brew install rbenv ruby-build
brew install sbt
brew install scala
brew install the_silver_searcher

# Remove outdated versions from the cellar.
brew cleanup
