# Use the official Piston image
FROM ghcr.io/engineer-man/piston

# Expose port 2000
EXPOSE 3000

# Start the API
CMD ["node", "src/index.js"]