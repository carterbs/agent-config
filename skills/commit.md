---
name: commit
description: Create git commits using conventional commits format with concise, meaningful messages. Use when the user wants to commit code changes, says "commit this", "make a commit", "commit my changes", "save my work", "commit what I've done", or any variation requesting a git commit.
---

# Commit

Create git commits using conventional commits format that document the entire changeset.

## Workflow

1. **Analyze the changeset**
   ```bash
   git status
   git diff          # unstaged changes
   git diff --staged # staged changes
   ```

2. **Determine staging strategy**
   - **With session context**: Stage only files relevant to the current task
   - **No context**: Stage all changes (`git add -A`)

3. **Craft the commit message** following the format below

4. **Execute the commit**
   ```bash
   git commit -m "$(cat <<'EOF'
   <type>[optional scope][!]: <title>

   [optional body]

   [optional footer]
   EOF
   )"
   ```

## Commit Message Format

### Title Line (max 72 chars)

```
<type>[(scope)][!]: <concise description>
```

- **type** (required): One of `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`
- **scope** (optional): Component, module, or area affected (e.g., `api`, `auth`, `ui`)
- **!** (optional): Indicates breaking change
- **description**: Imperative mood, lowercase, no period

### Body (only if meaningful context exists)

- Explain **what** changed and **why**
- Wrap at 72 characters
- Separate from title with blank line

### Footer (optional)

- Breaking changes: `BREAKING CHANGE: <description>`
- Issue references: `Fixes #123`, `Closes #456`

## Type Reference

| Type | Use When |
|------|----------|
| `feat` | Adding new functionality |
| `fix` | Fixing a bug |
| `docs` | Documentation only |
| `style` | Formatting, whitespace (no logic change) |
| `refactor` | Code restructuring (no feature/fix) |
| `perf` | Performance improvement |
| `test` | Adding/updating tests |
| `build` | Build system, dependencies |
| `ci` | CI/CD configuration |
| `chore` | Maintenance, tooling |

## Handling Multiple Logical Changes

If the changeset contains **multiple unrelated changes**:

1. **Prefer separate commits** - Split into atomic commits, each with its own message
2. **If combining is necessary** - Use the most significant type and list changes in body:
   ```
   feat(api): add user endpoints and fix auth bug

   - Add GET/POST /users endpoints
   - Fix token validation in auth middleware
   ```

## Examples

**Simple feature:**
```
feat(auth): add password reset endpoint
```

**Bug fix with context:**
```
fix(cart): prevent duplicate items on rapid clicks

Race condition allowed multiple additions before state updated.
Debounce add-to-cart action and check existing items.
```

**Breaking change:**
```
feat(api)!: change response format to JSON:API spec

BREAKING CHANGE: All endpoints now return JSON:API formatted responses.
Clients must update parsers to handle the new structure.
```

**Docs only:**
```
docs: add API authentication guide
```

**Chore with scope:**
```
chore(deps): upgrade react to v19
```
