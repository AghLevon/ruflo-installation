FROM node:22-bookworm-slim

ENV NODE_ENV=production
WORKDIR /app

RUN npm install --global ruflo@latest \
    && npm cache clean --force

COPY start.sh /app/start.sh
RUN chmod 755 /app/start.sh

EXPOSE 10000
CMD ["/app/start.sh"]
