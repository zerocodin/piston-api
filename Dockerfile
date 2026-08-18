FROM ghcr.io/engineer-man/piston:latest

# Create writable directories
RUN mkdir -p /piston/packages /isolate /tmp \
    && chmod 777 /isolate /tmp

# Override entrypoint to use writable paths
ENV ISOLATE_DIR=/isolate
ENV TMP_DIR=/tmp

EXPOSE 2000
