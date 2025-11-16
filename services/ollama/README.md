# Ollama

Local AI models with Open WebUI.

**Version**: Ollama 0.12.3 | Open WebUI 0.6.27

## Start

```bash
make up ollama
```

## Access

- **Open WebUI**: http://localhost:3171
- **Ollama API**: http://localhost:3170

## Setup

1. Open http://localhost:3171
2. Create admin account
3. Settings → Connections → Pull models
4. Start chatting

## Pull Models

```bash
docker exec ollama ollama pull llama3.2
docker exec ollama ollama pull codellama
docker exec ollama ollama list
```
