FROM oven/bun:1-debian

WORKDIR /app
COPY . .
RUN bun install --no-save

EXPOSE 3000
CMD ["bun", "src/cli.ts", "serve", "--http", "--port", "3000", "--bind", "0.0.0.0"]
