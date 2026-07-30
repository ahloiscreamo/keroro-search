#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

BIN_DIR="$HOME/.local/bin"
SHARE_DIR="$HOME/.local/share/keroro-search/png"
CONFIG_DIR="$HOME/.config/keroro-search"

echo "Installing keroro-search..."

# Create target directories
mkdir -p "$BIN_DIR"
mkdir -p "$SHARE_DIR"
mkdir -p "$CONFIG_DIR"

# Copy executable
cp "$SCRIPT_DIR/keroro-search.sh" "$BIN_DIR/keroro-search"
chmod +x "$BIN_DIR/keroro-search"

# Copy thumbnail PNG assets
cp "$SCRIPT_DIR/png/"*.png "$SHARE_DIR/"

# Copy config if not already present
if [ ! -f "$CONFIG_DIR/keroro-search.conf" ]; then
    cp "$SCRIPT_DIR/config/keroro-search.conf" "$CONFIG_DIR/keroro-search.conf"
    echo "Created default config at $CONFIG_DIR/keroro-search.conf"
else
    echo "Existing config found at $CONFIG_DIR/keroro-search.conf (kept untouched)"
fi

echo "Installation complete!"
echo "Make sure $BIN_DIR is in your PATH, then run 'keroro-search'."
