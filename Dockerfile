FROM oven/bun:1-debian

WORKDIR /app
COPY . .
RUN bun install --no-save

EXPOSE 3000
CMD ["bun", "src/core/index.ts"]