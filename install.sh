#!/bin/bash
set -e

DOTFILES_DIR="$HOME/dotfiles/zsh"

echo "Linking Zsh config..."
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/.zsh_aliases" "$HOME/.zsh_aliases"
ln -sf "$DOTFILES_DIR/.zsh_exports" "$HOME/.zsh_exports"
ln -sf "$DOTFILES_DIR/.zsh_plugins" "$HOME/.zsh_plugins"

echo "✅ Dotfiles installed."

