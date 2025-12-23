---
name: validate_plan
description: Validate implementation against plan, verify success criteria, identify issues. Use when you've completed an implementation phase and need to verify it matches the plan, confirm success criteria are satisfied, or identify gaps before proceeding.
---

# Validate Implementation Against Plan

Verify implementation matches planned specifications and success criteria are met.

## Workflow

### 1. Load the Plan

- Locate plan in `thoughts/shared/plans/`
- Read completely, extract success criteria
- Identify current phase scope

### 2. Verify Automated Criteria

Run each automated criterion from the plan:
```bash
npm test
npm run type-check
npm run lint
npm run build
```

Report:
- ✅ Criterion: [description] - PASSED
- ❌ Criterion: [description] - FAILED (error details)

### 3. Review Manual Criteria

For each manual criterion:
- Understand what it tests
- Examine implementation for the functionality
- Verify completeness and edge cases
- Assess against plan: YES / NO / PARTIAL

### 4. Compare Against Plan

```bash
git diff [base-branch]...HEAD
```

For each changed file:
- Expected by plan?
- Changes match plan?
- Anything extra or missing?

### 5. Compile Report

```markdown
## Validation Report: [Phase Name]

### Plan Reference
- Plan: `thoughts/shared/plans/[filename].md`
- Phase: [number and name]
- Target Branch: [base branch]

### Automated Criteria
| Criterion | Command | Status | Details |
|-----------|---------|--------|---------|
| [Name] | [command] | ✅/❌ | [pass/error] |

**Summary**: X/Y passed

### Manual Criteria
| Criterion | Status | Evidence |
|-----------|--------|----------|
| [Name] | ✅/❌/⚠️ | [Finding] |

**Summary**: X/Y satisfied

### Code Review
| File | Planned? | Correct? | Issues |
|------|----------|----------|--------|
| path | Yes/No | Yes/Partial | [Any] |

### Gaps and Issues
- [ ] Issue 1: [Description and severity]

### Overall Assessment
**Status**: ✅ READY / ⚠️ NEEDS FIXES / ❌ MAJOR ISSUES

### Next Steps
1. If READY: Proceed to [next phase]
2. If NEEDS FIXES: [Items to address]
3. If MAJOR ISSUES: [What must be resolved]
```

## Key Principles

- Check ALL success criteria
- Include command outputs and file references
- Stick to what the plan says, not what seems reasonable
- Note severity of issues (blocker vs nice-to-have)
- Don't proceed to next phase with major blockers
