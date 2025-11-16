# PostgreSQL + PgAdmin

PostgreSQL 17.6 database with PgAdmin 9.9 web interface.

## Quick Start

```bash
# Setup environment
cp .env.example .env
nano .env  # Update credentials

# Start
make up postgres
# or: docker compose up -d
```

## Access

- **PostgreSQL**: `localhost:5434`
- **PgAdmin**: http://localhost:15432

## Connect to Database

**CLI:**
```bash
psql postgresql://postgres:password@localhost:5434/postgres
```

**PgAdmin:**
1. Open http://localhost:15432
2. Login with your `PGADMIN_DEFAULT_EMAIL` and password
3. Add server:
   - Host: `postgres`
   - Port: `5432` (internal)
   - Username/Password: from `.env`

## Common Commands

```bash
# View logs
make logs postgres

# Stop
make down postgres

# Remove volumes (deletes data!)
make clean postgres

# Backup database
docker exec postgres-server pg_dump -U postgres postgres > backup.sql

# Restore database
cat backup.sql | docker exec -i postgres-server psql -U postgres postgres
```

## Environment Variables

See `.env.example` for all configuration options.
