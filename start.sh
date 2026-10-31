#!/bin/sh
set -eu
# Render injects PORT; RuFlo reads CLAUDE_FLOW_MCP_PORT.
export CLAUDE_FLOW_MCP_PORT="${PORT:-10000}"
: "${RUFLO_MCP_HTTP_TOKEN:?RUFLO_MCP_HTTP_TOKEN must be set}"
exec ruflo mcp start -t http --host 0.0.0.0
