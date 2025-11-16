# Ollama + Open WebUI

Ollama 0.12.3 LLM runtime with Open WebUI v0.6.32 chat interface.

## Quick Start

```bash
# Start services
make up ollama
# or: docker compose up -d

# Pull a model
docker exec -it ollama ollama pull llama2
```

## Access

- **Ollama API**: `localhost:11434`
- **Open WebUI**: http://localhost:11435

## Popular Models

```bash
# Small models (good for learning)
docker exec -it ollama ollama pull phi
docker exec -it ollama ollama pull mistral

# Coding models
docker exec -it ollama ollama pull codellama
docker exec -it ollama ollama pull deepseek-coder

# Larger models
docker exec -it ollama ollama pull llama2
docker exec -it ollama ollama pull llama3

# List installed models
docker exec -it ollama ollama list
```

## Open WebUI

1. Open http://localhost:11435
2. Create account (first user = admin)
3. Start chatting with your models

Features:
- Multi-model chat
- Document upload (RAG)
- Conversation history
- Model management

## Ollama API

```bash
# Generate completion
curl http://localhost:11434/api/generate -d '{
  "model": "llama2",
  "prompt": "Why is the sky blue?"
}'

# Chat completion
curl http://localhost:11434/api/chat -d '{
  "model": "llama2",
  "messages": [{"role": "user", "content": "Hello!"}]
}'
```

## Common Commands

```bash
# View logs
make logs ollama

# Stop
make down ollama

# Remove volumes (deletes models!)
make clean ollama

# Interactive mode
docker exec -it ollama ollama run llama2

# Remove a model
docker exec -it ollama ollama rm llama2
```

## GPU Support

Uncomment GPU config in `compose.yaml`:
```yaml
deploy:
  resources:
    reservations:
      devices:
        - driver: nvidia
          count: all
          capabilities: [gpu]
```
