#!/bin/bash
# Install Council of Android as a Global Antigravity Plugin and Rule Set

set -e

CONFIG_DIR="$HOME/.gemini/config"
PLUGINS_DIR="$CONFIG_DIR/plugins/council-of-android"
RULES_DIR="$CONFIG_DIR/rules"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🧙 Installing Council of Android to $CONFIG_DIR..."

mkdir -p "$PLUGINS_DIR"
mkdir -p "$RULES_DIR"

# Copy plugin definition and skills
cp -r "$SCRIPT_DIR/plugins/council-of-android/"* "$PLUGINS_DIR/"

# Copy shared architectural rules
cp -r "$SCRIPT_DIR/rules/"* "$RULES_DIR/"

echo "✅ Council of Android successfully installed globally!"
echo "The following skills and rules are now available in all Antigravity workspaces:"
echo " - Skills: council-socket, council-grid, council-tube, council-galadriel, council-frodo"
echo " - Rules: council_architecture.md, tube_mvi_pattern.md, grid_ssot_pattern.md"
