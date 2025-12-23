---
name: resume-handoff
description: >
  Resume work from a handoff document by analyzing context, validating current state,
  and establishing continuity. Use when:
  (1) Continuing work from a previous session that was documented with a handoff,
  (2) Picking up where another developer or AI agent left off after they created a handoff,
  (3) Resuming work after a break when a handoff document exists in thoughts/shared/handoffs/,
  (4) Starting work on a ticket that has existing handoff documentation,
  (5) Recovering context after a conversation was interrupted or timed out,
  (6) Switching between different features/branches that have handoff documentation,
  (7) Onboarding to existing work where previous context was captured in a handoff.
---

# Resume Handoff

Resume work by thoroughly analyzing a handoff document and validating the current state of the codebase to ensure continuity with previous work.

## Initial Response

The skill adapts based on what's provided:

**Path provided**: Read handoff and linked plans/research FULLY (no limit/offset), then propose next action.

**Ticket number (ENG-XXXX)**:
1. Run `humanlayer thoughts sync` to ensure local thoughts is up to date
2. Find most recent handoff in `thoughts/shared/handoffs/ENG-XXXX/`
3. Read handoff and all linked documents completely
4. Propose next action

**No parameters**: Ask for handoff path or ticket number.

## Process

### 1. Read and Analyze Context

- Read the handoff completely (never use limit/offset)
- Extract critical information:
  - Original tasks and stated objectives
  - Recent changes made (files modified, features added)
  - Key learnings and insights discovered
  - Artifacts created or referenced (plans, research docs)
  - Action items left for continuation
- **Sub-agent recommendation**: Spawn parallel research sub-agents to verify current state of critical areas
- Wait for ALL sub-agents to complete
- Read critical files from "Learnings" and "Recent changes" sections
- Cross-reference linked plans/research from `thoughts/shared/plans/` or `thoughts/shared/research/`

### 2. Present Comprehensive Analysis

```
I've analyzed the handoff from [date] by [researcher]:

**Original Tasks:** [Status and verification of each]
**Key Learnings Validated:** [Which are still valid vs. changed]
**Recent Changes Status:** [Which are still present vs. missing/modified]
**Artifacts Reviewed:** [Key takeaways from each]
**Recommended Next Actions:** [Based on handoff + current state]
**Potential Issues:** [Conflicts, regressions, or divergences]

Proceed with [specific action], or adjust approach?
```

### 3. Create Action Plan

Use TodoWrite to create structured task list from:
- Action items explicitly listed in handoff
- Gaps or issues discovered during validation
- Logical next steps for completing the work

### 4. Begin Implementation

Once user approves:
- Reference handoff learnings throughout implementation
- Apply documented patterns and approaches
- Maintain awareness of previous context and decisions
- Create new handoff if significant new learnings emerge

## Common Scenarios

- **Clean Continuation**: All documented changes present → proceed with action items
- **Diverged Codebase**: Changes occurred since handoff → reconcile, adapt plan
- **Incomplete Work**: Previous work only partially complete → finish in-progress first
- **Stale Handoff**: Significantly outdated → re-evaluate strategy, possibly create fresh research

## Sub-agent Recommendations

1. **Context Verification Phase**: Spawn parallel research sub-agents to validate different aspects (file state, dependencies, test status)
2. **Linked Document Analysis**: If handoff references multiple plans/research, analyze each in parallel
3. **Codebase State Validation**: Use research sub-agents to verify assumptions about current code
