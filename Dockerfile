# Use a stable Node LTS base
FROM node:18-bullseye-slim

# Prevent interactive prompts
ENV NPM_CONFIG_UPDATE_NOTIFIER=false
ENV DEBIAN_FRONTEND=noninteractive

# Install n8n globally
RUN npm install -g --unsafe-perm n8n@^2

# Create n8n home
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
WORKDIR /home/node

EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
