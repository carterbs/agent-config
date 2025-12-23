---
name: create-handoff
description: Create handoff documents for transferring work context to another session or colleague. Use when pausing work mid-task, handing off to a colleague, reaching a decision point, completing a phase of work, context is complex with many moving parts, work spans multiple sessions, or blockers are encountered that need documentation.
---

# Create Handoff

Create structured handoff documents at `thoughts/shared/handoffs/{project-name}-handoff-{YYYY-MM-DD}.md` to enable seamless work continuity across sessions or between collaborators.

## Initial Response

When invoked, gather context by asking:

1. **What have you been working on?** - Project/feature name, primary goal and scope
2. **What's the current state?** - What's completed, in progress, blocked?
3. **What decisions have been made?** - Key technical/product decisions and rationale
4. **What happens next?** - Immediate next steps, dependencies, expected timeline
5. **What context is critical?** - Non-obvious details, gotchas, relevant links

## Document Structure

### 1. Overview
- **Project/Task Name**: Clear identifier
- **Status**: Current state (e.g., "In Progress - 60% complete", "Blocked - waiting on API access")
- **Primary Goal**: What success looks like
- **Owner**: Who's responsible

### 2. Context & Decisions
- **Problem Statement**: What problem does this solve?
- **Key Decisions**: Technical/product decisions with rationale and alternatives considered
- **Assumptions**: What we're assuming to be true
- **Dependencies**: What this depends on, what depends on this
- **Constraints**: Time, technical, or resource constraints

### 3. Current State
- **Completed Items**: What's done (with PR/issue links)
- **In-Progress Work**: What's partially complete, files being edited, branches in use
- **Blockers**: What's preventing progress, what's needed to unblock
- **Outstanding Questions**: Open questions, who can answer them

### 4. Technical Details
- **File Locations**: Absolute paths to all relevant files
- **Architecture Decisions**: Key patterns, libraries, structure decisions
- **Code Patterns**: Important patterns or conventions to follow
- **Testing Requirements**: How this work should be tested
- **Environment/Setup**: Any special configuration needed

### 5. Next Steps
- **Immediate Actions**: Prioritized list with estimated effort
- **Expected Outcomes**: What each action accomplishes
- **Success Criteria**: How to know when each step is done
- **Potential Blockers**: What might go wrong, how to handle it

### 6. References
- **Issues/PRs/Tickets**: Links with brief context
- **Documentation**: Relevant docs (internal or external)
- **Code References**: Links to specific files with line numbers
- **Related Handoffs**: Links to previous handoff docs

## Formatting Rules

- Use absolute paths, not relative
- Link to files rather than duplicating content
- Be specific: "Add JWT validation to /path/to/auth.py:45-60" not "Implement auth"
- Show reasoning: explain *why* decisions were made
- Prioritize ruthlessly: order next steps by importance
- Include gotchas: non-obvious things that could trip someone up
- Use checkboxes for actions to track progress

## Sub-Agent Recommendations

- **research-codebase-generic**: If you need to understand implementation state before documenting
- **create-plan**: If handoff involves future work needing detailed planning
- **commit**: Commit changes first so handoff references committed state
