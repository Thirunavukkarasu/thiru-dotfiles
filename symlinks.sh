#!/usr/bin/env bash

set -euo pipefail

echo "🔗 Setting up symlinks with stow..."

# Go to dotfiles root directory (assumes script is in root)
cd "$(dirname "$0")"

# List of folders to stow (each should have relevant dotfiles inside)
STOW_FOLDERS=(
  zsh
  git
  aliases
)

for folder in "${STOW_FOLDERS[@]}"; do
  if [ -d "$folder" ]; then
    echo "📁 Stowing $folder"
    stow -v --restow "$folder"
  else
    echo "⚠️  Skipping $folder (not found)"
  fi
done

echo "✅ Symlinks created."
