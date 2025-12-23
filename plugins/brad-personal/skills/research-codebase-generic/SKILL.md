---
name: research_codebase_generic
description: Research codebase comprehensively using parallel sub-agents. Use when exploring unfamiliar code, understanding architecture, documenting existing patterns, or investigating how features work.
---

# Research Codebase

Conduct comprehensive codebase research using parallel sub-agents.

## Process

1. **Read mentioned files first** - Read FULLY without limit/offset before spawning tasks

2. **Decompose research question**
   - Break into composable research areas
   - Identify components, patterns, concepts
   - Create TodoWrite research plan

3. **Spawn parallel sub-agents**
   - Use locator agents to find what exists
   - Use analyzer agents on promising findings
   - Run multiple agents in parallel

4. **Wait for ALL sub-agents**, then synthesize:
   - Prioritize live codebase over thoughts/ findings
   - Include file paths and line numbers
   - Highlight patterns and architectural decisions

5. **Generate research document**: `thoughts/shared/research/YYYY-MM-DD-ENG-XXXX-description.md`
   - YAML frontmatter: date, researcher, git_commit, branch, topic, tags, status
   - Sections: Research Question, Summary, Detailed Findings, Code References, Architecture Insights, Historical Context, Open Questions

6. **Add GitHub permalinks** if on main or pushed

7. **Sync and present** findings to user

## Path Handling

Remove only "searchable/" from thoughts paths:
- `thoughts/searchable/allison/...` → `thoughts/allison/...`
- `thoughts/searchable/shared/...` → `thoughts/shared/...`
