---
name: create_handoff
description: Create handoff document for transferring work to another session. Use when pausing work, handing off to a colleague, documenting decision points, or needing a progress snapshot for continuity.
---

# Create Handoff

Create structured handoff documents at `thoughts/shared/handoffs/{project-name}-handoff.md`.

## Initial Response

When invoked, respond with:

```
I'll help create a handoff document to transfer your work context.

To create an effective handoff, I need:
- What have you been working on?
- Current state (completed, in progress, blocked)?
- Key decisions made and why?
- Next immediate steps?
- Critical context the next session needs?
- Links to relevant files, PRs, or issues?
```

## Document Structure

### 1. Overview
- Project/task name, status, primary goal, timeline

### 2. Context & Decisions
- Problem statement, key decisions + rationale, assumptions, dependencies

### 3. Current State
- Completed items, in-progress work, blockers (with reasons), outstanding questions

### 4. Technical Details
- File locations (absolute paths), architecture decisions, code patterns, testing requirements

### 5. Next Steps
- Prioritized actions, expected outcomes, success criteria, potential blockers

### 6. References
- Links to issues/PRs/tickets, documentation, code refs with line numbers

## Formatting Rules

- Use absolute paths, not relative
- Link to files rather than duplicating content
- **Be specific** - General statements are hard to act on
- **Show reasoning** - Explain why decisions were made
- **Prioritize** - Next session may have limited time
- **Think ahead** - What would future-you want to know?

## After Creation

The next session should:
1. Read the handoff to understand context
2. Check referenced files and tickets
3. Follow the prioritized next steps
4. Update the document as they progress
