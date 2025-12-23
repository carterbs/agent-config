---
name: create-plan
description: >
  Create detailed implementation plans with thorough research and iteration (no thoughts directory).
  Use when:
  (1) Starting a significant feature that will span multiple files/components,
  (2) Planning a refactor that affects core architecture or multiple systems,
  (3) Working on multi-phase projects that need clear milestones and gates,
  (4) Establishing success criteria and testing strategy before writing code,
  (5) Breaking down complex work that needs coordination across teams,
  (6) Documenting approach for features with non-trivial technical decisions,
  (7) Creating a roadmap for features with backwards compatibility concerns,
  (8) Planning API changes, database migrations, or other breaking changes,
  (9) Need to research existing patterns before proposing implementation,
  (10) Project doesn't have a thoughts/ directory but needs structured planning.

  Produces a comprehensive plan with current state analysis, phased implementation,
  success criteria, and testing strategy.
---

# Create Implementation Plan (Generic)

## Workflow

### 1. Understand the Requirement

- Read all mentioned files completely (no partial reads)
- Present your informed understanding with specific file:line references
- Ask focused questions only about what research couldn't clarify
- Don't ask questions answerable through code exploration

### 2. Decompose and Plan Research

- Break task into composable research areas
- Identify components, patterns, concepts to investigate
- Use TodoWrite to track subtasks
- Think deeply about underlying patterns and constraints

### 3. Spawn Parallel Sub-Agents

**Codebase Research:**
- `codebase-locator` - Find WHERE files/components live
- `codebase-analyzer` - Understand HOW existing code works
- `codebase-pattern-finder` - Find similar implementations to learn from

**Agent Tips:**
- Start with locator agents to find what exists
- Use analyzer agents on promising findings
- Run multiple agents in parallel
- Tell agents what you're looking for, not how to search

### 4. Wait and Synthesize

Wait for ALL sub-agents, then:
- Compile results, prioritize live codebase as source of truth
- Include file paths and line numbers
- Highlight patterns, connections, architectural decisions
- Answer questions with concrete evidence

### 5. Propose Plan Structure

Present outline for approval:

```
## Overview
[1-2 sentence summary]

## Implementation Phases:
1. [Phase Name] - [What this accomplishes]
2. [Phase Name] - [What this accomplishes]
3. [Phase Name] - [What this accomplishes]
```

Get explicit user buy-in before investing in detailed planning.

### 6. Write the Plan

Save to: `thoughts/shared/plans/YYYY-MM-DD-brief-description.md` (if thoughts/ exists)
Or present inline if no thoughts directory.

**Structure:**
- **Overview** - Brief goal description
- **Current State Analysis** - What exists (file:line refs), what's missing, constraints
- **Desired End State** - What "done" looks like
- **Key Discoveries** - Findings with file:line refs
- **What We're NOT Doing** - Out-of-scope items
- **Implementation Approach** - High-level strategy

**Per phase:**
- Overview, changes required (file + specifics), success criteria, confirmation gate

**End with:**
- **Testing Strategy** - Unit, integration, manual
- **References** - Tickets, research, code refs

### 7. Finalize

- Run `humanlayer thoughts sync` (if applicable)
- Present draft location to user
- Iterate on feedback

## Success Criteria Format

**Automated**: Tests, type check, lint, build

**Manual**: Feature works, performance acceptable, edge cases handled

## Key Principles

- File:line references and measurable criteria
- Phases with confirmation gates
- Research before proposing
- Consider backwards compatibility
- No open questions - research or ask first

## Common Implementation Patterns

**Database Changes:**
Schema → Store/Repository methods → Business logic → API endpoints → Client code

**New Features:**
Research patterns → Data model → Backend implementation → API → UI/Frontend

**Refactoring:**
Document current state → Incremental changes → Maintain backwards compatibility → Migration strategy

**API Changes:**
Document current behavior → Deprecation plan → New implementation → Migration guide → Old code removal
