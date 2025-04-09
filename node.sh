#!/usr/bin/env bash

set -euo pipefail

echo "📦 Setting up Node environment..."

# Ensure Node is installed
if ! command -v node &>/dev/null; then
  echo "❌ Node.js is not installed. Please run brew.sh first."
  exit 1
fi

# Use Bun for fast installs and scripts if installed
if command -v bun &>/dev/null; then
  echo "⚡ Bun installed: $(bun --version)"
fi

# Install global npm packages
npm install -g \
  pnpm \
  eslint \
  typescript \
  prettier \
  serve \
  vercel \
  nodemon

# Optional: Bun equivalents
if command -v bun &>/dev/null; then
  bun install
fi

echo "✅ Node tooling setup complete."
