FROM docker.n8n.io/n8nio/n8n:latest

# Set required environment variables
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV NODE_ENV=production

EXPOSE 5678

CMD ["n8n", "start"]
