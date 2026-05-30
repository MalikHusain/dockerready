# Root Dockerfile for Render deployment
FROM docker/compose:latest

WORKDIR /app

COPY docker-compose.yml .
COPY app1/ ./app1/
COPY app2/ ./app2/

EXPOSE 3001 3002

CMD ["docker-compose", "up"]
