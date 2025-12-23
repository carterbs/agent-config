---
name: iterate_plan
description: Iterate on existing implementation plans with thorough research and updates. Use when improving previously created plans, incorporating new findings, addressing feedback, or adapting to changed requirements.
---

# Iterate on Implementation Plan

Refine existing plans based on new information or feedback.

Use this for incremental improvements to existing plans. For major scope changes or complete rewrites, consider creating a new plan with `create_plan` instead.

## Workflow

### 1. Load the Existing Plan

- Read the plan completely from `thoughts/shared/plans/`
- If plan file doesn't exist at expected location, confirm path with user
- Understand current structure, phases, success criteria
- Note any areas marked as uncertain or needing refinement

### 2. Gather Iteration Context

Ask user:
- What aspects need revision?
- What new information do we have?
- What feedback was received?
- Have requirements changed?

### 3. Research Changes

Spawn parallel research as needed:
- `research_codebase` or `research_codebase_nt` - If implementation details changed
- `research_codebase_generic` - For broader architectural validation
- Review existing thoughts for related context

### 4. Propose Updates

Present changes clearly before making them:
- What's being added/modified/removed
- Why each change is necessary
- Get user confirmation before editing

### 5. Update the Plan

- Edit in place (git tracks history)
- Update affected phases and success criteria
- Add update note at top: `Updated: YYYY-MM-DD - [brief reason]`

### 6. Finalize

- Run `humanlayer thoughts sync`
- Present updated plan to user
- Confirm all feedback addressed

## Key Principles

- Preserve working parts—only change what needs changing
- Maintain consistency across phases
- Update success criteria if scope changed
- Document why changes were made
