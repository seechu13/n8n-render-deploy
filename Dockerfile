# Use a stable Node LTS base so npm + npx are available predictably
FROM node:18-bullseye-slim

# Ensure npm is non-interactive and allow global installs to run with elevated perms
ENV NPM_CONFIG_UPDATE_NOTIFIER=false
ENV DEBIAN_FRONTEND=noninteractive

# Install n8n globally (allow running as root during build)
RUN npm install -g --unsafe-perm n8n@^2

# Create n8n home (optional)
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
WORKDIR /home/node

EXPOSE 5678

# Start n8n (this uses the installed global binary)
CMD ["n8n", "start"]
