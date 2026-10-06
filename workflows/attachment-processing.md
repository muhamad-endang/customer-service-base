# Attachment Processing Protocol

## Case Bundle
Treat compatible attachments as one case bundle:
- screenshots = current event/evidence;
- CASE.md = current state;
- active project documents = project-specific authority;
- Developer response = technical validation;
- Management response = business exception/approval;
- knowledge base = reusable company knowledge.

Do not assume unrelated files belong to the same client.

## Screenshot Ordering
Use:
1. visible date/time;
2. conversation continuity;
3. attachment order;
4. filename numbering when meaningful.

Detect overlap and avoid duplicate interpretation.

## Last Unresolved Message
Identify the newest client question that still requires meaningful CS response. A short acknowledgement does not necessarily resolve the underlying question.

## Developer Form Continuation
When a Developer response arrives after a RED case:
- match Request ID when available;
- otherwise match case + subject;
- treat it as continuation;
- do not ask the user to repeat known context.

## Conflict Handling
Do not silently blend conflicting sources. Use source hierarchy; if unresolved, escalate.

## Missing Data
Ask only for specific missing facts.
