---
name: resume_handoff
description: Resume work from handoff document with context analysis and validation. Use when continuing work from a previous session, picking up where someone left off, or resuming after a break with a handoff document.
---

# Resume Handoff

Resume work by analyzing a handoff document and validating current state.

## Initial Response

**Path provided**: Read handoff and linked plans/research FULLY, then propose action

**Ticket number (ENG-XXXX)**:
1. Run `humanlayer thoughts sync`
2. Find most recent handoff in `thoughts/shared/handoffs/ENG-XXXX/`
3. Read handoff and linked documents
4. Propose action

**No parameters**: Ask for handoff path or ticket number

## Process

### 1. Read and Analyze

- Read handoff completely (no limit/offset)
- Extract: Tasks, Recent changes, Learnings, Artifacts, Action items
- Spawn research tasks to verify current state
- Wait for ALL sub-tasks
- Read critical files from Learnings and Recent changes

### 2. Present Analysis

```
I've analyzed the handoff from [date] by [researcher]:

**Original Tasks:** [Status and verification]
**Key Learnings Validated:** [Still valid/Changed]
**Recent Changes Status:** [Verified/Missing/Modified]
**Artifacts Reviewed:** [Key takeaways]
**Recommended Next Actions:** [Based on handoff + current state]
**Potential Issues:** [Conflicts or regressions]

Proceed with [action], or adjust approach?
```

### 3. Create Action Plan

Use TodoWrite to create task list from handoff action items

### 4. Begin Implementation

Reference handoff learnings throughout; apply documented patterns

## Scenarios

- **Clean Continuation**: All changes present → proceed
- **Diverged Codebase**: Reconcile differences, adapt plan
- **Incomplete Work**: Complete in-progress tasks first
- **Stale Handoff**: Re-evaluate strategy
