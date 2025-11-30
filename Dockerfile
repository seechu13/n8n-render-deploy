# Use a stable Node LTS base so npm + npx are available predictably
FROM node:18-bullseye-slim

# Install n8n globally
RUN npm install -g n8n@^2

# Create n8n home (optional, keeps data in /home/node/.n8n)
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
WORKDIR /home/node

EXPOSE 5678

# Start n8n (this uses the installed global binary)
CMD ["n8n", "start"]
