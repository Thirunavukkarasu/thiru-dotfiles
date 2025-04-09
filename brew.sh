#!/usr/bin/env bash

set -euo pipefail

echo "🔧 Installing minimal Homebrew packages..."

# Install Homebrew if not present
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

# CLI essentials
brew install \
  git \
  node \
  yarn \
  zsh \
  fzf \
  zoxide \
  ripgrep \
  jq \
  neovim \
  stow

# Zsh enhancements
brew install \
  zsh-autosuggestions \
  zsh-syntax-highlighting \
  powerlevel10k

# GUI apps for dev (optional but handy)
brew install --cask \
  visual-studio-code \
  iterm2

brew cleanup

echo "✅ Minimal brew setup complete."
