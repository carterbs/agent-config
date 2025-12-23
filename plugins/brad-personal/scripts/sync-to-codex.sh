#!/bin/bash
# Sync skills and commands to Codex CLI

SCRIPT_DIR="$(dirname "$0")"
SKILLS_SOURCE="$SCRIPT_DIR/../skills"
SKILLS_TARGET="$HOME/.codex/skills"
COMMANDS_SOURCE="$SCRIPT_DIR/../commands"
PROMPTS_TARGET="$HOME/.codex/prompts"

# Sync skills
mkdir -p "$SKILLS_TARGET"
for skill in "$SKILLS_SOURCE"/*/; do
    name=$(basename "$skill")
    [[ "$name" == ".claude" ]] && continue
    cp -r "$skill" "$SKILLS_TARGET/"
done
echo "Synced skills to $SKILLS_TARGET"

# Sync commands -> prompts (flat .md files)
if ls "$COMMANDS_SOURCE"/*.md &>/dev/null; then
    mkdir -p "$PROMPTS_TARGET"
    cp "$COMMANDS_SOURCE"/*.md "$PROMPTS_TARGET/"
    echo "Synced commands to $PROMPTS_TARGET"
else
    echo "No commands to sync"
fi
