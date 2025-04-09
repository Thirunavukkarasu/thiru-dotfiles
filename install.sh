#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

echo "🚀 Installing dotfiles..."

# Load helper functions
info() { echo -e "🔹 $1"; }
success() { echo -e "✅ $1"; }
error() { echo -e "❌ $1"; exit 1; }

# 1. Run brew script
if [[ -f "./brew.sh" ]]; then
  info "Installing Homebrew packages..."
  source ./brew.sh
fi

# 2. Run node packages installer
if [[ -f "./node.sh" ]]; then
  info "Installing Node packages..."
  source ./node.sh
fi

# 3. Symlink dotfiles using stow
if [[ -f "./symlinks.sh" ]]; then
  info "Creating symlinks with stow..."
  source ./symlinks.sh
fi

# 4. Source Zsh config (optional: might need terminal restart instead)
if [[ -f "$HOME/.zshrc" ]]; then
  info "Sourcing .zshrc..."
  source "$HOME/.zshrc"
fi

success "Dotfiles installation complete 🎉"
