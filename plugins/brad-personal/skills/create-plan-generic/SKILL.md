---
name: create_plan_generic
description: Create detailed implementation plans with thorough research and iteration (no thoughts directory). Use for significant features, refactors, multi-phase work needing systematic parallel research before finalizing the plan.
---

# Create Implementation Plan (Generic)

## Workflow

### 1. Understand the Requirement
- Read all mentioned files completely (no partial reads)
- Present informed understanding with file:line references
- Ask focused questions only about what research couldn't clarify

### 2. Decompose and Plan Research
- Break task into composable research areas
- Identify components, patterns, concepts to investigate
- Use TodoWrite to track subtasks
- Think deeply about underlying patterns and constraints

### 3. Spawn Parallel Sub-Agents

**Codebase Research:**
- `codebase-locator` - Find WHERE files/components live
- `codebase-analyzer` - Understand HOW existing code works
- `codebase-pattern-finder` - Find similar implementations

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
1. [Phase] - [What it accomplishes]
2. [Phase] - [What it accomplishes]
```

### 6. Write the Plan

Save to: `thoughts/shared/plans/YYYY-MM-DD-[ENG-XXXX]-description.md`

Structure:
- **Overview** - Brief goal description
- **Current State Analysis** - What exists (file:line refs), what's missing, constraints
- **Desired End State** - What "done" looks like
- **Key Discoveries** - Findings with file:line refs
- **What We're NOT Doing** - Out-of-scope items
- **Implementation Approach** - High-level strategy

Per phase:
- Overview, changes required (file + specifics), success criteria, confirmation gate

End with:
- **Testing Strategy** - Unit, integration, manual
- **References** - Tickets, research, code refs

### 7. Finalize
- Run `humanlayer thoughts sync`
- Present draft location
- Iterate on feedback

## Success Criteria Format

**Automated**: Tests, type check, lint, build

**Manual**: Feature works, performance acceptable, edge cases handled

## Key Principles

- File:line references and measurable criteria
- Phases with confirmation gates
- Research before proposing
- Consider backwards compatibility
- No open questions

## Common Implementation Patterns

**Database Changes:**
Schema → Store/Repository methods → Business logic → API endpoints → Client code

**New Features:**
Research patterns → Data model → Backend implementation → API → UI/Frontend

**Refactoring:**
Document current state → Incremental changes → Maintain backwards compatibility → Migration strategy

**API Changes:**
Document current behavior → Deprecation plan → New implementation → Migration guide → Old code removal
