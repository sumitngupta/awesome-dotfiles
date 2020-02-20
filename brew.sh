#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Turn off analytics
brew analytics o

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install ZSH and zsh-completions
brew install zsh
brew install zsh-completions

# Install Mac App Store command line interface
brew install mas

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install imagemagick
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli
brew install watch
brew install wrk
brew install sslscan
brew install tmux
brew install peco
brew install gs

# Development
# brew install ansible
brew install awscli
# brew install protobuf
brew install dark-mode
brew install direnv              # direnv for managing .envrc based environments
brew install go
brew install htop
brew install hub
brew install jq
brew install openssl
brew install packer
brew install pre-commit
brew install python3
brew install readline
brew install rsync
brew install telnet
brew install tmate               # https://tmate.io/ Instant terminal sharing
brew install semaphoreci/tap/sem # semaphore ci
brew install websocat            # websocat
brew install ripgrep             # ripgrep recursively searches directories for a regex pattern
brew install libpq               # install postgres tools without installing full postgres
brew install elixir              # elixir programming language
brew install kubectl             # kubernetes cli
brew install helm                # helm kubernetes package manager

# Rails Dev environment
brew install rvm
brew tap heroku/brew
brew install heroku
brew install github/gh/gh
brew install node

# miniconda python environment manager
brew cask install miniconda

# Java 11
brew tap homebrew/cask-versions
brew cask install java

# Displayplacer https://github.com/jakehilborn/displayplacer
brew tap jakehilborn/jakehilborn
brew install displayplacer

# Spectacle
brew cask install spectacle

# install terraform & terraform tools
brew install warrensbox/tap/tfswitch && tfswitch 0.12.17
brew install terragrunt
brew install tflint

# casks
brew cask install aws-vault
brew cask install font-hack-nerd-font

# Remove outdated versions from the cellar.
brew tap caskroom/cask

# Core Functionality
echo Install Core Apps
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" little-snitch
brew cask install --appdir="~/Applications" transmission
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" flux

# Development
echo Install Dev Apps
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" rubymine
brew cask install --appdir="/Applications" charles

# Google Slavery
echo Install Google Apps
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-backup-and-sync

# Nice to have
echo Install Some additional Apps
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" droplr
brew cask install --appdir="/Applications" franz

# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup
