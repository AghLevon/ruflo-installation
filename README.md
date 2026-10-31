# RuFlo installation package

This repository stores a ChatGPT-oriented RuFlo orchestration skill package and the supplied federation MCP descriptor.

## Contents
- `plugin.json` — plugin metadata.
- `skills/setup/SKILL.md` — setup and capability-boundary guidance.
- `skills/ruflo-orchestrator/SKILL.md` — orchestration workflow.
- `agents/openai.yaml` — supplied RuFlo Federation MCP descriptor.

## Important compatibility notes
- The orchestration skill is an instruction package. It does not itself launch independent agents or grant external account access.
- The MCP descriptor points to the vendor-hosted endpoint `https://x.ruv.io/chatgpt/mcp`; it does not create or host that endpoint.
- ChatGPT Go on iPhone cannot add an arbitrary custom MCP server directly. Uploading these files to GitHub does not activate the MCP connection in the ChatGPT iOS app.
- The official Ruflo CLI MCP command is a local stdio server (`npx -y ruflo@latest mcp start`), not a ready-made public HTTP server. A Render web service should not be created by simply running that stdio command.

## Local setup reference
For a compatible MCP client with local stdio support, install Node.js 20+ and run `npx ruflo@latest init wizard`, then configure the client to launch `npx -y ruflo@latest mcp start`.

## Safety
Keep API keys, tokens, `.env` files, and private credentials out of this repository. Review all external actions before publishing, sending, deleting, or changing permissions.
