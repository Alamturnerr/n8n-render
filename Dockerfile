FROM n8nio/n8n:latest

# Render akan kasih PORT env var
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=${PORT}

# Simpan data N8N
VOLUME /home/node/.n8n

CMD ["n8n"]
