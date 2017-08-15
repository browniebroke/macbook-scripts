#!/usr/bin/env bash

# Install Xcode Command Line Tools.
xcode-select --install

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew essentials.
brew install heroku
brew install git

# Install download utilities.
brew install wget
brew install httpie

# Install bash utilities.
brew install bats
brew install shellcheck

# Install Python utlitlies.
brew install python2
brew install python3
brew install pypy
brew install pypy3
brew install ipython

# Make Python 3 system default.
rm -fr /usr/local/bin/python
ln -s /usr/local/bin/python3 /usr/local/bin/python

# Install Postgres
brew install postgres

# Virtualization
brew cask install vagrant
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install docker-toolbox
brew cask install adobe-photoshop-cc

# Get Homebrew-Cask
brew tap caskroom/cask

# Dev & work:
brew cask install pycharm
brew cask install atom
brew cask install iterm2
brew cask install insomnia
brew cask install slack

# File exchange
brew cask install catch
brew cask install bittorrent
brew cask install dropbox
brew cask install hubic

# Various
brew cask install google-chrome
brew cask install firefox
brew cask install skype
brew cask install whatsapp
brew cask install spotify
brew cask install vlc
