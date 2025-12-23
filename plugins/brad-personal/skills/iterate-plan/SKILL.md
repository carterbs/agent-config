---
name: iterate-plan
description: Iterate on existing implementation plans with thorough research and updates. Use when plan feedback identified issues, new information emerged during implementation, requirements shifted after planning, implementation revealed incorrect assumptions, need to incorporate learnings from completed phases, user requests plan updates or revisions, or codebase changes made parts of the plan outdated.
---

# Iterate on Implementation Plan

Refine and update existing implementation plans based on new information, feedback, or changed circumstances.

This skill is for **incremental improvements** to existing plans. The plan structure and phases remain mostly intact, but specific details need revision.

## When to Use This vs. Create-Plan

**Use iterate-plan when:**
- Core approach is still valid but needs adjustments
- Most phases remain relevant with minor modifications
- Responding to feedback or new discoveries
- Requirements evolved but didn't fundamentally change

**Use create-plan when:**
- Original approach is no longer viable
- Scope changed dramatically (50%+ different work)
- Starting fresh would be clearer than patching
- Plan is outdated enough that rewriting is faster

## Workflow

### 1. Load the Existing Plan

- Read the plan **completely** from `thoughts/shared/plans/`
- If file doesn't exist at expected location, confirm path with user
- Understand current structure: phases, success criteria, dependencies
- Note areas marked as uncertain or needing refinement
- Review any update history at the top

### 2. Gather Iteration Context

Ask focused questions:
- **What aspects need revision?** (phases, criteria, approach)
- **What new information do we have?** (implementation discoveries, API changes)
- **What feedback was received?** (code review, stakeholders, testing)
- **Have requirements changed?** (new constraints, priorities, scope)

Keep questions focused on **what changed** since original plan.

### 3. Research Changes

Spawn parallel sub-agents as needed:

- **codebase-locator** - "Find all files related to [component]"
  - When plan references are outdated after refactoring
- **codebase-analyzer** - "Analyze how [feature] is implemented"
  - When validating a new approach
- **codebase-pattern-finder** - "Find examples of [pattern]"
  - When exploring alternative approaches
- **thoughts-locator** - "Find research about [topic]"
  - When checking if related decisions were documented
- **thoughts-analyzer** - "Extract [info] from [doc]"
  - When incorporating insights from other plans

**Wait for ALL sub-agents** before proposing changes.

### 4. Propose Updates

Present changes clearly **before** making them:

```markdown
## Proposed Changes

### Phase X: [Phase Name]
**Why:** [Reason for change]
**What:** [Specific modifications]
**Impact:** [How this affects other phases]

### Success Criteria Updates
**Adding:** [New criteria and why]
**Removing:** [Obsolete criteria and why]
**Modifying:** [Changed criteria and why]
```

Ask: "Does this address your concerns? Any other changes needed?"

### 5. Update the Plan

Once approved, edit the plan **in place** (git tracks history):

- Add update note at top: `Updated: YYYY-MM-DD - [brief reason]`
- Update affected phases with new details
- Revise success criteria if scope/approach changed
- Add new discoveries with file:line references
- Update "What We're NOT Doing" if scope clarified
- Adjust testing strategy if needed

**Maintain consistency:** If Phase 2 changes affect Phase 3, update both.

### 6. Finalize

- Run `humanlayer thoughts sync` to sync the updated plan
- Present updated plan location
- Summarize what changed
- Confirm all feedback addressed

## Key Principles

- **Preserve working parts** — only change what needs changing
- **Maintain consistency** — if Phase 2 changes, check Phase 3
- **Update success criteria** — must reflect scope/approach changes
- **Document why** — add update note explaining the reason
- **Include references** — back up changes with file:line refs
- **Get user buy-in** — don't edit until user approves proposed changes
