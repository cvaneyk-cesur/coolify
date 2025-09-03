FROM n8nio/n8n:latest

# Cambia a usuario root para instalar paquetes
USER root

RUN apk update && \
    apk add --no-cache \
    wget \
    ffmpeg

# Variables de entorno básicas
ENV N8N_HOST=n8n.grupocoremsa.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV WEBHOOK_URL=https://n8n.grupocoremsa.com/
ENV N8N_RUNNERS_ENABLED=true

# Vuelve al usuario original de n8n
USER node
