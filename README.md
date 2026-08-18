---
title: Piston API
emoji: 🐳
colorFrom: blue
colorTo: purple
sdk: docker
pinned: false
port: 2000
---

# Piston API

A self-hosted Piston API for code execution.

## API Endpoints

- `GET /api/v2` - Get available languages
- `POST /api/v2/execute` - Execute code

## Usage

```bash
curl -X POST https://your-space.hf.space/api/v2/execute \
  -H "Content-Type: application/json" \
  -d '{
    "language": "javascript",
    "version": "18.15.0",
    "files": [{"content": "console.log(\"Hello!\")"}]
  }'