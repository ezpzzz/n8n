FROM n8nio/n8n:latest

USER root

# Switch back to node user for security
USER node

# Set environment variables
ENV N8N_PORT=9080 \
    N8N_PROTOCOL=https \
    NODE_ENV=production \
    N8N_HOST=n8n.sophosic.ai

# Expose the port that matches your GitLab CI configuration
EXPOSE 9080

# The image already has the correct entrypoint
