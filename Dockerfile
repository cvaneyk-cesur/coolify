FROM n8nio/n8n:latest

# Cambia a usuario root para instalar paquetes
USER root

RUN apk update && \
    apk add --no-cache \
    wget \
    ffmpeg

# Variables de entorno básicas
ENV N8N_HOST=yg0w88ksg0c0ocwkkssc4o0k.192.168.201.12.sslip.io
ENV N8N_PORT=5678
# ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV WEBHOOK_URL=http://yg0w88ksg0c0ocwkkssc4o0k.192.168.201.12.sslip.io/
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_SECURE_COOKIE=false

# Vuelve al usuario original de n8n
USER node
