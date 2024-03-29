#!/usr/bin/env bash

set -e

# Install Xcode Command Line Tools.
xcode-select --install || :

# Install Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install everything from the Brewfile
brew bundle

# Make Python 3 system default.
rm -fr /usr/local/bin/python
ln -s /usr/local/bin/python3 /usr/local/bin/python
# As well as pip
rm -rf /usr/local/bin/pip
ln -s /usr/local/bin/pip3 /usr/local/bin/pip

# Manually
echo "Please login to Dropbox and wait for mackup data to be synchronised."
echo "Do you want to run 'mackup restore' now (y/n)?"

read continue

if [ "$continue" = "y" ]
then
    mackup restore
fi
