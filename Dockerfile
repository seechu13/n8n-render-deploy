# ✔ Use the official n8n Docker image
FROM n8nio/n8n:latest

# ✔ Expose the default port
EXPOSE 5678

# ✔ Start n8n (this works with this image)
CMD ["n8n", "start"]
