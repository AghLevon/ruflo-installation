FROM node:22-bookworm-slim

ENV NODE_ENV=production
ENV HOST=0.0.0.0

RUN npm install --global ruflo@3.56.10

EXPOSE 10000

CMD ["sh", "-c", "ruflo mcp start -t http --host 0.0.0.0 --port ${PORT:-10000}"]
