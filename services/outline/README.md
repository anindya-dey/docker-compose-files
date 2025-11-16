# Outline Wiki

Outline 1.0.1 - Modern team knowledge base with PostgreSQL and Redis.

## Quick Start

```bash
# Setup environment
cp .env.example .env
nano .env  # Update configuration

# Generate secrets
openssl rand -hex 32  # SECRET_KEY
openssl rand -hex 32  # UTILS_SECRET

# Start
make up outline
# or: docker compose up -d
```

## Access

- **Outline**: http://localhost:3100

## Configuration

Edit `.env`:
```env
# Database
DATABASE_URL=postgres://outline:password@postgres:5432/outline
POSTGRES_PASSWORD=your_password

# Redis
REDIS_URL=redis://redis:6379

# Security (generated above)
SECRET_KEY=your_generated_secret
UTILS_SECRET=your_generated_secret

# App
URL=http://localhost:3100
PORT=3000
```

## Authentication

Outline requires OAuth. Add to `.env`:

**Google OAuth:**
```env
GOOGLE_CLIENT_ID=your_client_id
GOOGLE_CLIENT_SECRET=your_client_secret
```

**Slack OAuth:**
```env
SLACK_CLIENT_ID=your_client_id
SLACK_CLIENT_SECRET=your_client_secret
```

See [Outline docs](https://docs.getoutline.com) for OAuth setup.

## Common Commands

```bash
# View logs
make logs outline

# Stop
make down outline

# Remove volumes (deletes data!)
make clean outline

# Backup database
docker exec outline-postgres pg_dump -U outline outline > backup.sql

# Restore database
cat backup.sql | docker exec -i outline-postgres psql -U outline outline
```

## Important

- Generate unique `SECRET_KEY` and `UTILS_SECRET` (32-byte hex)
- Configure OAuth provider before first use
- Match `POSTGRES_PASSWORD` in `DATABASE_URL`
