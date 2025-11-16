# MongoDB

MongoDB 8.0.17 NoSQL document database.

## Quick Start

```bash
# Setup environment
cp .env.example .env
nano .env  # Update credentials

# Start
make up mongodb
# or: docker compose up -d
```

## Access

- **MongoDB**: `localhost:27017`

## Connect

**CLI:**
```bash
mongosh "mongodb://admin:password@localhost:27017"
```

**Connection String:**
```
mongodb://admin:password@localhost:27017/?authSource=admin
```

**GUI:** Use [MongoDB Compass](https://www.mongodb.com/try/download/compass)

## Common Commands

```bash
# View logs
make logs mongodb

# Stop
make down mongodb

# Remove volumes (deletes data!)
make clean mongodb

# MongoDB shell
docker exec -it mongodb-server mongosh -u admin -p password

# Backup
docker exec mongodb-server mongodump --out=/backup

# Restore
docker exec mongodb-server mongorestore /backup
```

## Environment Variables

See `.env.example` for configuration.
