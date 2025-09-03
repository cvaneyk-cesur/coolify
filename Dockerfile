FROM docker.n8n.io/n8nio/n8n

# Cambia a usuario root para instalar paquetes
USER root

RUN apk update && \
    apk add --no-cache \
    wget \
    ffmpeg

# Variables de entorno básicas
ENV N8N_HOST=${SERVICE_URL_N8N}
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV WEBHOOK_URL=${SERVICE_URL_N8N}
ENV N8N_SECURE_COOKIE=false

# Vuelve al usuario original de n8n
USER node
