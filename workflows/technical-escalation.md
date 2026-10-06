# Technical Escalation

Use when answer depends on technical validation not already established.

Typical examples:
- custom feature feasibility;
- framework/architecture choice;
- API/integration;
- database/migration;
- server/VPS capacity/compatibility;
- performance/concurrency;
- deployment/environment;
- security constraints;
- complex timeline/effort;
- mobile publication dependency;
- anything outside CS technical authority.

## RED Procedure
1. State internally what cannot yet be concluded.
2. Extract minimum technical questions.
3. Create request using `templates/developer-request-fast.template.md`.
4. Set case status `WAITING_DEVELOPER`.
5. If client needs immediate response, provide holding reply without inventing completion time.
6. When response arrives, re-evaluate GREEN/YELLOW/RED.

## Knowledge Candidate
After using Developer answer, run Knowledge Capture:
- case-specific → case only;
- reusable rule/service boundary → normalize into global KB.

Never paste raw Developer chat into KB.
