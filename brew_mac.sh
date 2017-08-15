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


# Get Homebrew-Cask
brew tap caskroom/cask

# Install various
brew cask install google-chrome
brew cask install slack
brew cask install spotify
brew cask install firefox
brew cask install pycharm
brew cask install atom
brew cask install iterm2
brew cask install insomnia
