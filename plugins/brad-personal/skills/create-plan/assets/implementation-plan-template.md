# Implementation Plan: [Brief Description]

**Date:** YYYY-MM-DD
**Author:** [Name]
**Status:** Draft | In Review | Approved | In Progress | Completed

---

## Overview

[1-2 sentence summary of what we're building and why]

---

## Current State Analysis

### What Exists
- **[Component/Area 1]**: [Description with file:line references]
  - File: `/path/to/file.ext:123-145`
  - Current behavior: [describe]

- **[Component/Area 2]**: [Description with file:line references]
  - File: `/path/to/file.ext:67-89`
  - Current behavior: [describe]

### What's Missing
- [Gap 1]: [Why we need it]
- [Gap 2]: [Impact of not having it]

### Constraints & Considerations
- **Technical**: [Database limits, API constraints, performance requirements]
- **Business**: [Timeline, dependencies on other teams]
- **Backwards Compatibility**: [What must remain working]
- **Security/Privacy**: [Data handling, access control considerations]

---

## Desired End State

### Success Definition
[What "done" looks like from a user/system perspective]

### Key Outcomes
1. [Measurable outcome 1]
2. [Measurable outcome 2]
3. [Measurable outcome 3]

---

## Key Discoveries

### Finding 1: [Discovery Name]
**Location**: `/path/to/file.ext:123`
**Insight**: [What we learned and why it matters]
**Implication**: [How this affects our approach]

### Finding 2: [Discovery Name]
**Location**: `/path/to/file.ext:456`
**Insight**: [What we learned and why it matters]
**Implication**: [How this affects our approach]

---

## What We're NOT Doing

[Explicitly call out scope boundaries to prevent scope creep]

- **Not in scope**: [Thing 1] - [Reason why/when we might do it later]
- **Not in scope**: [Thing 2] - [Reason why/when we might do it later]
- **Deferred**: [Thing 3] - [Why we're pushing to future work]

---

## Implementation Approach

### High-Level Strategy
[Overall approach - monolithic vs incremental, feature flags, rollout strategy]

### Architecture Decisions
- **Decision 1**: [Choice made] - [Rationale]
- **Decision 2**: [Choice made] - [Rationale]

### Risk Mitigation
- **Risk**: [Potential issue] → **Mitigation**: [How we'll handle it]
- **Risk**: [Potential issue] → **Mitigation**: [How we'll handle it]

---

## Implementation Phases

### Phase 1: [Phase Name]

**Overview**: [What this phase accomplishes and why it comes first]

**Changes Required**:
1. **File**: `/path/to/file.ext`
   - **Change**: [Specific modification]
   - **Why**: [Rationale]

2. **File**: `/path/to/another-file.ext`
   - **Change**: [Specific modification]
   - **Why**: [Rationale]

**Success Criteria**:
- **Automated**:
  - [ ] All tests pass (`npm test` / `go test ./...`)
  - [ ] Type checking passes (`tsc --noEmit` / etc)
  - [ ] Linting passes (`npm run lint`)
  - [ ] Build succeeds (`npm run build`)

- **Manual**:
  - [ ] [Specific feature works as expected]
  - [ ] [Edge case X handled correctly]
  - [ ] [Performance meets requirement Y]

**Confirmation Gate**: [What needs to be verified before moving to Phase 2]

---

### Phase 2: [Phase Name]

**Overview**: [What this phase accomplishes and why it comes second]

**Changes Required**:
1. **File**: `/path/to/file.ext`
   - **Change**: [Specific modification]
   - **Why**: [Rationale]

**Success Criteria**:
- **Automated**:
  - [ ] [Specific tests]

- **Manual**:
  - [ ] [Verification steps]

**Confirmation Gate**: [What needs to be verified before moving to Phase 3]

---

## Testing Strategy

### Unit Tests
- **Location**: `/path/to/tests/`
- **Coverage**: [What we're testing]
  - [ ] [Test case 1]
  - [ ] [Test case 2]
  - [ ] [Edge case 1]

### Integration Tests
- **Location**: `/path/to/integration-tests/`
- **Coverage**: [What we're testing end-to-end]
  - [ ] [Integration scenario 1]
  - [ ] [Integration scenario 2]

### Manual Testing
- [ ] **Happy path**: [Steps to verify main use case]
- [ ] **Edge cases**: [Steps to verify boundary conditions]
- [ ] **Error handling**: [Steps to verify graceful failures]
- [ ] **Performance**: [How to verify performance requirements]
- [ ] **Backwards compatibility**: [Verify existing functionality still works]

---

## Rollout & Deployment

### Deployment Strategy
- [Describe rollout approach: feature flags, gradual rollout, all-at-once]

### Rollback Plan
- **Trigger**: [When would we rollback]
- **Steps**: [How to rollback safely]

### Monitoring
- **Metrics to watch**: [What indicates success/failure]
- **Alerts**: [What should trigger notifications]

---

## References

### Related Tickets
- [TICKET-123]: [Related work]
- [TICKET-456]: [Dependency or follow-up]

### Research & Documentation
- [Link to research document]
- [Link to RFC or design doc]
- [External documentation]

### Code References
- **Similar implementation**: `/path/to/similar-code.ext:123-456`
- **Pattern to follow**: `/path/to/pattern-example.ext:789-1000`
- **Anti-pattern to avoid**: `/path/to/what-not-to-do.ext:111-222`

---

## Open Questions (should be empty before starting implementation)

- [ ] ~~Question 1~~ - **Resolved**: [Answer]
- [ ] ~~Question 2~~ - **Resolved**: [Answer]

---

## Change Log

| Date | Author | Change |
|------|--------|--------|
| YYYY-MM-DD | [Name] | Initial draft |
| YYYY-MM-DD | [Name] | Updated after review feedback |
