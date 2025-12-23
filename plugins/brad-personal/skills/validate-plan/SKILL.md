---
name: validate-plan
description: Validate implementation against plan, verify success criteria are met, and identify gaps. Use when completing an implementation phase and need verification, confirming success criteria are satisfied, identifying gaps or deviations from planned approach, at a checkpoint before committing or creating a PR, generating validation reports, or catching issues by comparing implementation against specs.
---

# Validate Implementation Against Plan

Systematically verify that implementation matches planned specifications and success criteria are satisfied. Produces a comprehensive validation report.

## Related Skills

- **implement-plan**: Run validate-plan after each phase to ensure quality before proceeding
- **iterate-plan**: If validation reveals gaps, use to update the plan
- **create-handoff**: Include validation report in handoff documentation

## Workflow

### 1. Load the Plan

- Locate plan in `thoughts/shared/plans/`
- Read completely, extract success criteria (automated + manual)
- Identify current phase scope
- Note base branch specified in plan

### 2. Verify Automated Criteria

Run each automated criterion from the plan:

```bash
npm test          # or appropriate test command
npm run type-check
npm run lint
npm run build
```

Document results:
- ✅ **Criterion**: [description] - **PASSED**
- ❌ **Criterion**: [description] - **FAILED** - [error details]

Capture full output of any failures.

### 3. Review Manual Criteria

For each manual criterion:
1. **Understand**: What functionality does this test?
2. **Examine**: Review implementation code
3. **Verify**: Check completeness and edge cases
4. **Assess**: Determine compliance:
   - ✅ **YES**: Fully satisfied
   - ❌ **NO**: Not satisfied
   - ⚠️ **PARTIAL**: Partially satisfied

Document with specific evidence (file paths, line numbers).

### 4. Compare Against Plan

```bash
git diff [base-branch]...HEAD
```

For each changed file:
- Was this change expected by the plan?
- Do changes match what plan described?
- Anything missing or extra?

### 5. Compile Validation Report

```markdown
## Validation Report: [Phase Name]

### Plan Reference
- Plan: `thoughts/shared/plans/[filename].md`
- Phase: [number and name]
- Base Branch: [branch]

### Automated Criteria
| Criterion | Command | Status | Details |
|-----------|---------|--------|---------|
| [Name] | [command] | ✅/❌ | [result] |

**Summary**: X/Y passed

### Manual Criteria
| Criterion | Status | Evidence |
|-----------|--------|----------|
| [Name] | ✅/❌/⚠️ | [Finding] |

**Summary**: X/Y satisfied

### Code Review
| File | Planned? | Matches Plan? | Issues |
|------|----------|---------------|--------|
| path | Yes/No | Yes/Partial/No | [Any] |

### Gaps and Issues
- [ ] **Blocker**: [Must fix before proceeding]
- [ ] **High**: [Should fix soon]
- [ ] **Medium**: [Address but not blocking]
- [ ] **Low**: [Nice-to-have]

### Overall Assessment
**Status**: ✅ READY / ⚠️ NEEDS FIXES / ❌ MAJOR ISSUES

### Next Steps
1. If READY: Proceed to [next phase]
2. If NEEDS FIXES: [Specific items to address]
3. If MAJOR ISSUES: [What must be resolved]
```

## Key Principles

- **Check ALL success criteria** - Don't skip any
- **Include evidence** - Command outputs, file refs, line numbers
- **Stick to the plan** - Compare against what plan says, not what seems reasonable
- **Note severity** - Blocker vs high vs medium vs low
- **Clear recommendations** - Don't proceed with major blockers unresolved
