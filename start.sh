#!/bin/sh
set -eu
# Render injects PORT; pass it explicitly because the CLI defaults to 3000.
: "${RUFLO_MCP_HTTP_TOKEN:?RUFLO_MCP_HTTP_TOKEN must be set}"
exec ruflo mcp start -t http --host 0.0.0.0 --port "${PORT:-10000}"
