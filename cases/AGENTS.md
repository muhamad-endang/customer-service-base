# Case Workspace Instructions

## One Client, One Long-Lived Case
Use one slug folder per client/project relationship.

Do not create a new case merely because a new WhatsApp message arrives.

## Required State
Each case must have `CASE.md` as concise current state. Update it when lifecycle, current issue, pending dependency, key decision, last processed evidence, last action, or next action changes.

## Isolation
Never copy project-specific facts between clients unless they have first been normalized into the global knowledge base as reusable information.

## Evidence
Raw screenshots and temporary inbound evidence belong in `inbox/` and are local-only by default.

When multiple screenshots are present:
1. use visible timestamps if available;
2. otherwise use conversation continuity;
3. otherwise use attachment/file order;
4. avoid double-counting overlap.

Find the last unresolved client message, not merely the last visible text.

## Developer / Management
Technical uncertainty → `developer/requests/`.
Business exception/approval → `management/requests/`.

Keep request IDs and response relationships explicit.

## Outputs
Permanent output is for material decisions/replies only. Simple acknowledgements do not require an artifact.

- Do not overwrite an existing Developer output, client-chat draft, or Codex output file when creating a newer version.
- Name the first version `<nama_file>_v0.001.md`, then increment sequentially for later revisions, such as `_v0.002.md` and `_v0.003.md`.
- Inspect the relevant case folder before creating a new output and use the next available version for the same logical artifact.
- Preserve all prior versions for continuity and audit history; versioned outputs must be tracked and synchronized through Git.
- This applies to files under `output/`, `developer/`, `management/`, and other generated Markdown outputs. It does not require versioning `CASE.md` or raw local-only files under `inbox/`.

Never store secrets in committed case files.
