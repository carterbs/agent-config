# Plan Update Note Format

Add this entry at the top of the plan's "Update History" section (create the section if it doesn't exist):

```markdown
## Update History

- **Updated:** YYYY-MM-DD - [Brief reason for update]
  - [Specific change 1]
  - [Specific change 2]
  - [Impact on timeline/scope if any]
```

## Examples

### Feedback-driven update:
```markdown
- **Updated:** 2025-12-23 - Incorporated security review feedback
  - Added input validation to Phase 2
  - Updated success criteria with security test cases
  - No timeline impact
```

### Implementation discovery:
```markdown
- **Updated:** 2025-12-23 - Adjusted approach based on API limitations
  - Changed Phase 3 to use REST instead of GraphQL
  - Added new Phase 4 for migration script
  - Timeline extended by ~1 day
```

### Requirement change:
```markdown
- **Updated:** 2025-12-23 - Scope adjustment per stakeholder request
  - Removed mobile support (moved to future work)
  - Added admin dashboard requirement to Phase 2
  - Updated success criteria accordingly
```

### Codebase evolution:
```markdown
- **Updated:** 2025-12-23 - Updated references after auth refactor
  - Updated file paths in Phase 1 (auth module moved)
  - Adjusted patterns to match new auth conventions
  - No scope or timeline changes
```
