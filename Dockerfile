FROM ghcr.io/engineer-man/piston:latest

# The base entrypoint chowns this data directory before starting the API.
# Railway does not provide the local Compose volume, so create it in the image.
RUN mkdir -p /piston/packages

EXPOSE 2000
