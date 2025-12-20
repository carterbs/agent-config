#!/bin/bash

# Script to sync .claude agents and commands from humanlayer repository

set -e

REPO_URL="https://api.github.com/repos/humanlayer/humanlayer/contents"
AGENTS_PATH=".claude/agents"
COMMANDS_PATH=".claude/commands"
TARGET_DIR="$HOME/.claude"

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR/agents"
mkdir -p "$TARGET_DIR/commands"

# Function to download files from a GitHub API path
download_from_github() {
    local api_path=$1
    local target_path=$2
    local item_type=$3

    echo "Downloading $item_type from $api_path..."

    # Get list of files from GitHub API
    local response=$(curl -s "${REPO_URL}/${api_path}")

    # Extract download URLs using jq
    local files=$(echo "$response" | jq -r '.[] | select(.type=="file") | .download_url' 2>/dev/null)

    if [ -z "$files" ]; then
        echo "No files found in $api_path"
        return 1
    fi

    # Download each file
    echo "$files" | while read -r url; do
        local filename=$(basename "$url")
        echo "  Downloading $filename..."
        curl -s -o "${target_path}/${filename}" "$url"
    done

    echo "Completed downloading $item_type"
}

# Download agents and commands
download_from_github "$AGENTS_PATH" "$TARGET_DIR/agents" "agents"
download_from_github "$COMMANDS_PATH" "$TARGET_DIR/commands" "commands"

echo "✓ Sync complete! Files saved to $TARGET_DIR"
echo "  - Agents: $TARGET_DIR/agents"
echo "  - Commands: $TARGET_DIR/commands"
