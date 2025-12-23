---
name: implement_plan
description: Implement technical plans from thoughts/shared/plans with verification. Use when you have a completed implementation plan ready to code, want to execute phases methodically with verification, or need to track progress against documented success criteria.
---

# Implement Technical Plan

Execute implementation plans phase by phase with automated verification at each milestone.

## Workflow

### 1. Load the Plan

- Ask for path if not provided: `thoughts/shared/plans/YYYY-MM-DD-*.md`
- Read complete plan, extract phases, success criteria, dependencies
- Verify prerequisites: `git status`, `git log -1`, pre-flight checks

### 2. Execute Each Phase

For each phase:

**Implement:**
- Make changes per plan specification
- Reference file:line numbers from plan
- Follow existing patterns
- Commit incrementally

**Verify automatically:**
```bash
[tests command]
[type check command]
[lint command]
[build command]
```

**Report results:**
- Which checks passed/failed
- Any unexpected failures
- Next steps if verification failed

**Manual verification:**
- Follow testing steps from plan
- Test each scenario
- Verify edge cases

### 3. Phase Gate

After success criteria met:

```
✓ Phase [N]: [Name]
- All automated checks passing
- Manual verification complete

Proceed to Phase [N+1]?
```

**Wait for explicit user confirmation.**

### 4. Final Verification

After all phases:

1. **Run full validation suite**
   ```bash
   [all checks from the plan]
   ```

2. **Perform end-to-end testing**
   - Follow integration tests from the plan
   - Verify feature works end-to-end
   - Check for regressions

3. **Document completion**
   ```
   ✅ Implementation Complete: [Feature Name]

   Phases executed:
   - Phase 1: [Name] ✓
   - Phase 2: [Name] ✓
   [additional phases if applicable]

   Success criteria verified:
   - Automated: [passed checks]
   - Manual: [verified scenarios]

   Commits: [count] | Branch: [name]
   ```

## Handling Issues

**Automated checks fail:**
1. Show error output
2. Analyze what went wrong
3. Ask: fix it, troubleshoot further, or try different approach?

**Manual testing reveals problems:**
1. Document issue
2. Determine if in scope for this phase
3. Fix or note as follow-up

**Plan unclear:**
1. Ask specific questions
2. Show ambiguous text
3. Propose interpretation for confirmation

## Key Principles

- One phase at a time—complete criteria before advancing
- Reference plan continuously, flag deviations
- Verify automatically first, then manual testing
- Explicit confirmation between phases
