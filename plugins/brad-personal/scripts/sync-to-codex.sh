#!/bin/bash
# Sync skills and commands to Codex CLI

SCRIPT_DIR="$(dirname "$0")"
SKILLS_SOURCE="$SCRIPT_DIR/../skills"
SKILLS_TARGET="$HOME/.codex/skills"
COMMANDS_SOURCE="$SCRIPT_DIR/../commands"
PROMPTS_TARGET="$HOME/.codex/prompts"

# Sync skills (copy entire tree, including hidden entries)
mkdir -p "$SKILLS_TARGET"
rsync -a "$SKILLS_SOURCE"/ "$SKILLS_TARGET"/
echo "Synced skills to $SKILLS_TARGET"

# Show optional cleanup for skills not in source
extras=$(rsync -a --delete --dry-run --itemize-changes "$SKILLS_SOURCE"/ "$SKILLS_TARGET"/ \
    | awk '/^(\\*deleting |deleting )/ {print $2}')
if [[ -n "$extras" ]]; then
    echo "Extra items in $SKILLS_TARGET not in source (optional removal):"
    while IFS= read -r path; do
        [[ -n "$path" ]] && echo "rm -rf \"$SKILLS_TARGET/$path\""
    done <<< "$extras"
fi

# Sync commands -> prompts (flat .md files)
if ls "$COMMANDS_SOURCE"/*.md &>/dev/null; then
    mkdir -p "$PROMPTS_TARGET"
    cp "$COMMANDS_SOURCE"/*.md "$PROMPTS_TARGET/"
    echo "Synced commands to $PROMPTS_TARGET"
else
    echo "No commands to sync"
fi
