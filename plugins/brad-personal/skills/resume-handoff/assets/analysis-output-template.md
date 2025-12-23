# Handoff Analysis Output Template

Use this template when presenting the analysis in step 2 of the resume-handoff process.

---

## Template

```
I've analyzed the handoff from [DATE] by [AUTHOR]:

**Original Tasks:**
- [Task 1]: [Status - Completed/In Progress/Not Started/Blocked]
  - Verification: [How we confirmed this status]
- [Task 2]: [Status]
  - Verification: [Evidence]

**Key Learnings Validated:**
- [Learning 1]: ✅ Still valid / ⚠️ Changed - [explanation]
- [Learning 2]: ✅ Still valid / ⚠️ Changed - [explanation]
- [Critical insight]: [Current applicability]

**Recent Changes Status:**
- [File/Feature 1]: ✅ Present as documented / ❌ Missing / ⚠️ Modified
  - Details: [What we found vs. what was documented]
- [File/Feature 2]: [Status]
  - Details: [Findings]

**Artifacts Reviewed:**
- [Plan/Research doc 1]: [Key takeaways relevant to continuation]
- [Code artifact]: [Current state and implications]

**Recommended Next Actions:**
1. [Highest priority action based on handoff + current state]
2. [Second priority action]
3. [Third priority action]

**Potential Issues:**
- [Issue 1]: [Description of conflict, regression, or divergence]
  - Impact: [How this affects the work]
  - Recommendation: [How to address]
- [Issue 2]: [Description]
  - Impact: [Effect]
  - Recommendation: [Mitigation]

---

Proceed with [SPECIFIC_ACTION], or would you like me to adjust the approach?
```

---

## Example Output

```
I've analyzed the handoff from 2025-12-20 by Claude:

**Original Tasks:**
- Implement user authentication: ✅ Completed
  - Verification: Login flow working, tests passing, PR merged
- Add rate limiting: 🔄 In Progress (60%)
  - Verification: Base implementation exists, missing Redis integration
- Update API documentation: ❌ Not Started
  - Verification: No changes to docs/ directory since handoff

**Key Learnings Validated:**
- Auth middleware pattern in `/src/middleware/auth.ts:45-67`: ✅ Still valid
- Rate limit config in Redis: ⚠️ Changed - Redis cluster now uses different key prefix
- JWT secret rotation approach: ✅ Still valid, documented in `/docs/security.md`

**Recent Changes Status:**
- `/src/auth/login.ts`: ✅ Present as documented
- `/src/middleware/rateLimit.ts`: ⚠️ Modified - additional logging added by another dev
- `/tests/auth.test.ts`: ✅ Present, 15 new tests added

**Artifacts Reviewed:**
- `thoughts/shared/plans/auth-refactor.md`: Phase 1-2 complete, Phase 3 pending
- `thoughts/shared/research/redis-patterns.md`: Key insight about cluster mode applies

**Recommended Next Actions:**
1. Complete Redis integration for rate limiting (continue from `/src/middleware/rateLimit.ts:89`)
2. Update rate limit tests to cover new Redis cluster configuration
3. Begin API documentation once rate limiting is verified

**Potential Issues:**
- Redis key prefix change: Config mismatch between handoff docs and current state
  - Impact: Rate limit keys won't be found with old prefix
  - Recommendation: Update `/config/redis.ts` to use new prefix `rl:v2:`
- Additional logging in rateLimit.ts: Merge conflict risk
  - Impact: Minor - just need to preserve new logging
  - Recommendation: Review lines 45-52 before making changes

---

Proceed with completing the Redis integration for rate limiting, or would you like me to adjust the approach?
```

---

## Guidelines

- Be specific about verification methods (don't just say "confirmed" - say how)
- Use clear status indicators (✅ ⚠️ ❌ 🔄)
- Always include file:line references when discussing code
- Prioritize next actions clearly (numbered, most important first)
- Surface potential issues proactively with concrete recommendations
- End with a clear question allowing user to confirm or redirect
