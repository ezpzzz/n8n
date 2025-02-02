FROM n8nio/n8n:latest

USER root

# Install additional dependencies if needed
# RUN apt-get update && apt-get install -y your-package

# Switch back to node user
USER node

# Optional: Set environment variables
ENV N8N_PORT=5678 \
    N8N_PROTOCOL=https \
    NODE_ENV=production

# Expose the port
EXPOSE 5678

# The image already has the correct entrypoint
