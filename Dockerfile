FROM n8nio/n8n:latest

# Listen di semua interface
ENV N8N_HOST=0.0.0.0

# Port default image (tidak wajib sama dengan PORT Render)
EXPOSE 5678

# Pastikan N8N_PORT mengikuti PORT dari Render saat start
# (jika Render tidak set, fallback ke 5678)
CMD ["bash","-lc","export N8N_PORT=${PORT:-5678}; n8n"]
