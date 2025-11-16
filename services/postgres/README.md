# PostgreSQL

PostgreSQL with pgAdmin web interface.

**Version**: PostgreSQL 18.1 | pgAdmin4 9.2.1

## Start

```bash
make up postgres
```

## Access

- **Database**: `localhost:3190`
- **pgAdmin**: http://localhost:15432
- **Credentials**: See `.env` file

## Connect

**CLI:**
```bash
psql postgresql://postgres:password@localhost:5434/postgres
```

**pgAdmin:**
1. Open http://localhost:15432
2. Add server: Host `postgres`, Port `5432`

## Backup

```bash
docker exec postgres-server pg_dump -U postgres postgres > backup.sql
```

## Environment Variables

See `.env.example` for all configuration options.
