# RuFlo HTTP MCP deployment

This repository contains the ChatGPT-oriented RuFlo orchestration skill package plus a separately runnable RuFlo HTTP MCP service.

## Render

- Runtime: Docker (root `Dockerfile`)
- Region: Frankfurt
- Plan: Free (testing only)
- Port: Render-provided `PORT` (fallback 10000)
- MCP endpoint: `/mcp`
- Health endpoint: `/health`
- Authentication: set `RUFLO_MCP_HTTP_TOKEN` as a Render secret environment variable. Never commit it to Git.

The Docker image pins RuFlo CLI 3.56.10. The service binds to `0.0.0.0` and requires bearer-token authentication. `/health` is intentionally public and returns only a minimal status response; MCP routes require `Authorization: Bearer <token>`.

## Important limitations

A deployed MCP endpoint does not automatically connect it to ChatGPT. ChatGPT Go on iOS cannot add arbitrary custom MCP servers directly. Use this endpoint only from an MCP client that supports Streamable HTTP and bearer-token authentication. Render Free services can spin down when idle, so the first request after inactivity may be delayed.

## Safety

Treat the MCP token as a password. Rotate it if exposed. Review the RuFlo tool permissions before connecting clients. Do not expose the service without the token.
