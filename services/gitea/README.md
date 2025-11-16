# Gitea

Self-hosted Git service with PostgreSQL backend.

**Version**: Gitea 1.25 | PostgreSQL 18.1

## Start

```bash
make up gitea
```

## Access

- **Web UI**: http://localhost:3050
- **SSH**: `localhost:3051`

## Setup

1. Open http://localhost:3050
2. Create admin account
3. Start creating repositories

## Clone Repository

```bash
# HTTP
git clone http://localhost:3050/username/repo.git

# SSH
git clone ssh://git@localhost:2222/username/repo.git
```
