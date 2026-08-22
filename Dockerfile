FROM ghcr.io/engineer-man/piston:latest

# Create necessary directories
RUN mkdir -p /piston/packages /tmp \
    && chown -R 1000:1000 /piston/packages \
    && chmod -R 755 /piston/packages /tmp

# Install curl for health checks
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Environment variables (can be overridden)
ENV NODE_ENV=production
ENV PISTON_REPO_URL=http://repo:8000/index
ENV PISTON_WORKER_THREADS=4
ENV PISTON_LOG_LEVEL=info

# Expose the API port
EXPOSE 2000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:2000/api/v2/runtimes || exit 1

# Use the base image's entrypoint
# The base image's entrypoint will:
# 1. Initialize cgroup v2
# 2. Run /piston_api/src as the piston user
