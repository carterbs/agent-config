---
name: research-codebase
description: >
  Research codebase comprehensively using parallel sub-agents. Use when:
  (1) User explicitly asks to "research", "investigate", "explore", or "understand" the codebase.
  (2) Understanding architecture, system design, or how components interact,
  (3) Documenting existing patterns, conventions, or business logic,
  (4) Investigating how a feature works end-to-end,
  (5) Answering "how does X work?" or "where is Y implemented?" questions,
  (6) Preparing context before implementing a significant change,
  (7) Exploring unfamiliar code or onboarding to a new area,
---

# Research Codebase

Conduct comprehensive codebase research using parallel sub-agents.

## Process

1. **Read mentioned files first**
   - Read any files the user references FULLY (no limit/offset) before spawning tasks
   - This ensures you have necessary context before decomposing the question

2. **Decompose research question**
   - Break into composable, independent research areas
   - Identify components, patterns, concepts to investigate
   - Create TodoWrite research plan with specific investigation items

3. **Spawn parallel sub-agents**
   - Use `codebase-locator` agents to find relevant files and directories
   - Use `codebase-analyzer` agents on promising findings for deep dives
   - Use `codebase-pattern-finder` for finding similar implementations or examples
   - Run multiple agents in parallel for efficiency

4. **Wait for ALL sub-agents**, then synthesize
   - Prioritize live codebase findings over thoughts/ documentation
   - Include file paths and line numbers for all references
   - Highlight patterns, architectural decisions, and design rationale

5. **Generate research document**
   - Output path: `thoughts/shared/research/YYYY-MM-DD-<description>.md`
   - Use template from `assets/research-template.md`
   - Add GitHub permalinks if on main branch or pushed to remote

6. **Present findings to user**
   - Summarize key discoveries
   - Highlight anything surprising or noteworthy
   - Note any open questions or areas needing further investigation

## Path Handling

When referencing thoughts/ paths from search results, normalize them:
- `thoughts/searchable/allison/...` → `thoughts/allison/...`
- `thoughts/searchable/shared/...` → `thoughts/shared/...`
