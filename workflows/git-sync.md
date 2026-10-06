# Git Sync Protocol

## Trigger
Use when a task creates or modifies repository artifacts.

No file change -> no commit.

## Before Staging
1. `git status --short`
2. inspect relevant diff
3. stage only task-related files
4. `git diff --check`
5. ensure no secret/credential/raw inbox evidence is included

Prefer explicit paths. Avoid blind `git add .` when unrelated changes exist.

## Commit Examples
- `feat(workspace): add customer service routing workflow`
- `docs(kb): update shared hosting guidance`
- `case(triply): add approved project decision`
- `report(triply): add technical client reply`

## Push
Push active main branch to `origin`.

Never force push, amend unrelated commits, or claim success before verifying.

Helper:
`./scripts/finalize-task.ps1 -Paths <path1>,<path2> -CommitMessage "<message>"`
