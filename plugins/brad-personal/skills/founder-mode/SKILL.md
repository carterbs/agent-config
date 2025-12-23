---
name: founder_mode
description: Create Linear ticket and PR for experimental features after implementation. Use when building features without predefined specs ("founder mode") and need to document them properly with tracking. Requires Linear CLI and gh CLI configured.
---

# Founder Mode

Document experimental features by creating Linear tickets and PRs for prototype work.

## Prerequisites

- Linear CLI access configured
- GitHub CLI (gh) authenticated
- Git repository with remote configured
- Branch ready for PR submission

## How to Use

```
/founder_mode
```

The skill will:
- Ask for feature name and description
- Ask for implementation status and context
- Create a Linear ticket in experimental project
- Create a GitHub PR referencing the ticket
- Link the PR and ticket together

## Workflow

### 1. Gather Feature Info
- Feature name/title
- What it does
- Why it's useful / problem it solves
- Implementation status
- Special considerations or TODOs

### 2. Create Linear Ticket
- Meaningful ticket title
- Description with feature context
- Labels: experimental, prototype, etc.
- Assign to yourself
- Place in experimental/internal project if available

### 3. Create Pull Request
- Title references the ticket
- Description includes feature overview
- Link ticket in PR body

### 4. Link Tracking
- Cross-reference ticket in PR
- Track progress as feature evolves
- Convert to formal feature ticket if stabilized
