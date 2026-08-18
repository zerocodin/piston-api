FROM ghcr.io/engineer-man/piston:latest

# ✅ Set environment variable to tell Piston where data is
ENV PISTON_DATA_DIRECTORY=/tmp/piston
ENV DATA_DIRECTORY=/tmp/piston

# Create required directories
RUN mkdir -p /tmp/piston /tmp/piston/packages

EXPOSE 2000

# Use the default CMD from the base image
CMD ["node", "/piston/api/src/index.js"]
