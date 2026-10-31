---
name: setup
description: Set up RuFlo AI Orchestrator preferences and explain its actual capabilities and limitations.
---

# RuFlo AI Orchestrator setup

Introduce the plugin as a role-based orchestration playbook, not as a live RuFlo installation or MCP connector.

Ask the user for only the preferences that materially affect future workflows. If the user does not specify them, use these defaults:
- Language: match the user's language; support Armenian, Russian, and English.
- Detail: concise by default; expand for technical or business-critical tasks.
- Workstreams: use 2–5 only when tasks are independent.
- Approval: request confirmation before consequential external write actions.
- Reporting: distinguish planned, attempted, confirmed, and blocked actions.

Explain that connected apps and tools must be authorized separately. Offer a short first test: ask the user to give one complex task, then show the decomposition, roles, dependencies, and QA checklist before execution.
