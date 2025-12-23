---
name: commit
description: Create git commits with user approval and no Claude attribution. Use when the user wants to commit changes, asks to save work, or says "commit". NEVER adds co-author information or Claude attribution—commits appear as if the user wrote them.
---

# Commit Changes

## Process

1. **Assess changes**
   - Review conversation context for full picture of work done
   - Run `git status` and `git diff`
   - Determine if changes need one or multiple commits

2. **Plan commits**
   - Group related files logically
   - Draft imperative-mood messages focusing on *why*
   - Keep commits atomic and focused

3. **Present plan**
   - List files for each commit
   - Show commit messages
   - Ask: "I plan to create [N] commit(s). Proceed?"

4. **Execute on confirmation**
   - `git add` with specific files (never `-A` or `.`)
   - Create commits with planned messages
   - Show result: `git log --oneline -n [number]`

## Critical Rules

- **NO co-author info or Claude attribution**
- No "Generated with Claude" messages
- No "Co-Authored-By" lines
- Write messages as if user wrote them
