# Commit Plan Template

Use this format when presenting commit plans to users.

## Single Commit Format

```
I plan to create 1 commit:

Commit: [Imperative mood message focusing on why]
Files:
  - path/to/file1.ext
  - path/to/file2.ext
  - path/to/file3.ext

Proceed?
```

## Multiple Commits Format

```
I plan to create [N] commits:

Commit 1: [Imperative mood message - feature/fix/refactor]
Files:
  - path/to/related/file1.ext
  - path/to/related/file2.ext
Rationale: [Brief explanation if not obvious]

Commit 2: [Imperative mood message - feature/fix/refactor]
Files:
  - path/to/other/file1.ext
Rationale: [Brief explanation if not obvious]

Commit 3: [Imperative mood message - feature/fix/refactor]
Files:
  - path/to/another/file1.ext
  - path/to/another/file2.ext

Proceed with these commits?
```

## Example with Context

```
I've reviewed the changes and conversation context. Here's the commit plan:

Assessment:
- 5 files modified across 2 logical areas
- Authentication feature (3 files)
- Logging refactor (2 files)

I plan to create 2 commits:

Commit 1: Add JWT authentication for user login
Files:
  - src/auth/login.py
  - src/auth/session.py
  - tests/test_auth.py
Rationale: Implements new authentication mechanism with tests

Commit 2: Refactor logging utility for better performance
Files:
  - src/utils/logging.py
  - src/utils/log_formatter.py
Rationale: Separate change unrelated to authentication work

Proceed with these commits?
```

## Guidelines

- Always list specific file paths, never use wildcards
- Use imperative mood (Add, Fix, Refactor) not past tense
- Include rationale when commit purpose isn't obvious from files
- Group related changes together logically
- Ask clear yes/no question at the end
