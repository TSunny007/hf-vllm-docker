# Use the base image
FROM vllm/vllm-openai:latest

# Set the working directory
WORKDIR /app

# Copy the start script
COPY start.sh /app/start.sh

# Make the start script executable
RUN chmod +x /app/start.sh
EXPOSE 8000

# Use the start script as the entry point
ENTRYPOINT ["/app/start.sh"]
