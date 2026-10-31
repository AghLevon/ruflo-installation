# RuFlo HTTP MCP on Render

This container runs the official `ruflo` CLI in HTTP MCP mode. It binds to `0.0.0.0`, reads Render's `PORT` through `CLAUDE_FLOW_MCP_PORT`, and refuses to start unless `RUFLO_MCP_HTTP_TOKEN` is configured. The token is never stored in this repository.

## Render settings

- Runtime: Docker
- Dockerfile: `./Dockerfile`
- Region: Frankfurt
- Plan: Free (testing only)
- Health check path: `/health`
- Required secret environment variable: `RUFLO_MCP_HTTP_TOKEN`

The official CLI exposes HTTP MCP routes including `/mcp`, `/rpc`, and `/ws`; protect requests with `Authorization: Bearer <token>`. `/health` is intentionally public and minimal.

The free Render instance may sleep after inactivity, so the first request can be delayed. This deployment does not connect the server automatically to ChatGPT Go or the iOS app; a compatible MCP client and plan are still required.

## Security

Never commit tokens or API keys. Rotate the bearer token in Render if it is exposed. Do not enable unauthenticated HTTP mode.
