#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

BIN_DIR="$HOME/.local/bin"
PNG_DIR="$HOME/.local/share/keroro-search/png"
MENU_DIR="$HOME/.local/share/keroro-search/menu"
CONFIG_DIR="$HOME/.config/keroro-search"

echo "Installing keroro-search..."

# Create target directories
mkdir -p "$BIN_DIR"
mkdir -p "$PNG_DIR"
mkdir -p "$MENU_DIR"
mkdir -p "$CONFIG_DIR"

# Copy executable
cp "$SCRIPT_DIR/keroro-search.sh" "$BIN_DIR/keroro-search"
chmod +x "$BIN_DIR/keroro-search"

# Copy UI & notification PNG assets
cp "$SCRIPT_DIR/png/"*.png "$PNG_DIR/"

# Copy main menu thumbnail assets
if [ -d "$SCRIPT_DIR/menu" ]; then
    cp "$SCRIPT_DIR/menu/"*.png "$MENU_DIR/"
fi

# Copy config if not already present
if [ ! -f "$CONFIG_DIR/keroro-search.conf" ]; then
    cp "$SCRIPT_DIR/config/keroro-search.conf" "$CONFIG_DIR/keroro-search.conf"
    echo "Created default config at $CONFIG_DIR/keroro-search.conf"
else
    echo "Existing config found at $CONFIG_DIR/keroro-search.conf (kept untouched)"
fi

echo "Installation complete!"
echo "Make sure $BIN_DIR is in your PATH, then run 'keroro-search'."
