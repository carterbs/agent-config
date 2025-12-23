# Validation Report: [Phase Name]

**Date:** YYYY-MM-DD
**Validator:** Claude
**Status:** ✅ READY | ⚠️ NEEDS FIXES | ❌ MAJOR ISSUES

---

## Plan Reference

- **Plan File:** `thoughts/shared/plans/[filename].md`
- **Phase:** [Phase number and name]
- **Base Branch:** [base-branch-name]
- **Current Branch:** [current-branch-name]

---

## Automated Success Criteria

| Criterion | Command | Status | Details |
|-----------|---------|--------|---------|
| Tests | `npm test` | ✅/❌ | [X passed, Y failed] |
| Type Check | `npm run type-check` | ✅/❌ | [Clean / X errors] |
| Lint | `npm run lint` | ✅/❌ | [Clean / X warnings] |
| Build | `npm run build` | ✅/❌ | [Success / Failed] |

**Summary:** X/Y automated criteria passed

### Failed Criteria Details

```
[Full error output for any failures]
```

---

## Manual Success Criteria

| Criterion | Status | Evidence |
|-----------|--------|----------|
| [Criterion from plan] | ✅/❌/⚠️ | [File:line refs, observations] |
| [Criterion from plan] | ✅/❌/⚠️ | [File:line refs, observations] |

**Summary:** X/Y manual criteria satisfied

### Detailed Findings

#### [Criterion Name]
- **Status:** ✅ Satisfied / ❌ Not Satisfied / ⚠️ Partial
- **Evidence:** `/path/to/file.ext:123-145`
- **Assessment:** [Why this criterion is/isn't satisfied]

---

## Code Review Against Plan

### Changed Files

| File | Expected by Plan? | Matches Plan? | Notes |
|------|-------------------|---------------|-------|
| `/path/to/file.ext` | Yes/No | Yes/Partial/No | [Observations] |

### Unexpected Changes

- `/unexpected/file.ext`: [Why changed, justified?]

### Missing Implementation

- [Planned feature]: [What's missing, where expected]

---

## Gaps and Issues

### Blockers (Must Fix)
- [ ] **[Issue]** - Severity: Blocker
  - Location: `/path/file:line`
  - Impact: [Why this blocks]
  - Fix: [Recommendation]

### High Priority
- [ ] **[Issue]** - Severity: High
  - Location: `/path/file:line`
  - Impact: [What's affected]
  - Fix: [Recommendation]

### Medium Priority
- [ ] **[Issue]** - Severity: Medium
  - Location: `/path/file:line`
  - Fix: [Recommendation]

### Low Priority
- [ ] **[Issue]** - Severity: Low
  - Fix: [Recommendation]

---

## Overall Assessment

**Status:** ✅ READY | ⚠️ NEEDS FIXES | ❌ MAJOR ISSUES

### Summary
[2-3 sentences summarizing validation findings]

### Compliance Score
- Automated: X/Y (Z%)
- Manual: X/Y (Z%)
- Code Alignment: High/Medium/Low

---

## Next Steps

### If ✅ READY:
1. Proceed to Phase [N+1]: [Name]
2. [Any prep for next phase]

### If ⚠️ NEEDS FIXES:
**Required before proceeding:**
1. [Fix item]
2. [Fix item]

**Can address in parallel:**
1. [Improvement]

### If ❌ MAJOR ISSUES:
**Must resolve:**
1. [Critical issue]

**Recovery plan:**
1. [Step to fix]
2. [Re-validation]

---

## Appendix

### Commands Run
```bash
[List of commands executed]
```

### Git Diff Summary
```
[Output of git diff --stat]
```
