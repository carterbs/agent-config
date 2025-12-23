---
name: create_plan
description: Create detailed implementation plans through interactive research and iteration. Use for significant features, refactors, multi-phase work, or when establishing clear success criteria and milestones before coding.
---

# Create Implementation Plan

## Workflow

### 1. Understand the Requirement
- Read all mentioned files completely (no partial reads)
- Present informed understanding with file:line references
- Ask focused questions only about what research couldn't clarify

### 2. Research the Codebase

Spawn parallel agents:
- `codebase-locator` - Find relevant files/components
- `codebase-analyzer` - Understand existing code
- `codebase-pattern-finder` - Find similar implementations
- `thoughts-locator` - Find related research/decisions
- `thoughts-analyzer` - Extract insights from documents

Wait for ALL agents. Synthesize findings with file:line references.

### 3. Propose Plan Structure

Present outline for approval. **Get user buy-in before writing the detailed plan.**

```
## Overview
[1-2 sentence summary]

## Implementation Phases:
1. [Phase] - [What it accomplishes]
2. [Phase] - [What it accomplishes]
```

### 4. Write the Plan

Save to: `thoughts/shared/plans/YYYY-MM-DD-[ENG-XXXX]-description.md`

Structure:
- **Overview** - Brief goal description
- **Current State Analysis** - What exists (file:line refs), what's missing, constraints
- **Desired End State** - What "done" looks like
- **Key Discoveries** - Findings with file:line refs
- **What We're NOT Doing** - Out-of-scope items
- **Implementation Approach** - High-level strategy

For each phase:
- Overview of what it accomplishes
- Changes required (file paths + specific changes)
- Success criteria (automated + manual)
- "Pause here for confirmation before next phase"

End with:
- **Testing Strategy** - Unit, integration, manual tests
- **References** - Tickets, research docs, code refs

### 5. Finalize
- Run `humanlayer thoughts sync`
- Present draft location to user
- Iterate based on feedback

## Success Criteria Format

**Automated** (CI/CD):
- Tests pass: `[command]`
- Type check: `[command]`
- Lint passes: `[command]`
- Build succeeds: `[command]`

**Manual**:
- Feature works as specified
- Performance acceptable
- Edge cases handled

## Key Principles

- Include file:line references and measurable criteria
- Break into phases with confirmation gates
- Research patterns before proposing solutions
- Consider backwards compatibility, migrations, dependencies
- No open questions—research or ask first

## Common Implementation Patterns

**Database Changes:**
Schema → Store/Repository methods → Business logic → API endpoints → Client code

**New Features:**
Research patterns → Data model → Backend implementation → API → UI/Frontend

**Refactoring:**
Document current state → Incremental changes → Maintain backwards compatibility → Migration strategy

**API Changes:**
Document current behavior → Deprecation plan → New implementation → Migration guide → Old code removal
