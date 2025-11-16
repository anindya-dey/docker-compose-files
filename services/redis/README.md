# Redis Stack

Redis Stack 7.4.0 with RedisInsight UI and extended modules.

## Quick Start

```bash
make up redis
# or: docker compose up -d
```

## Access

- **Redis**: `localhost:6379`
- **RedisInsight UI**: http://localhost:6378

## Connect

**CLI:**
```bash
redis-cli -h localhost -p 6379
```

**Connection String:**
```
redis://localhost:6379
```

## RedisInsight

Open http://localhost:6378 - it will auto-detect the local Redis instance.

## Common Commands

```bash
# View logs
make logs redis

# Stop
make down redis

# Remove volumes (deletes data!)
make clean redis

# Redis CLI
docker exec -it redis-stack redis-cli

# Monitor commands
docker exec -it redis-stack redis-cli MONITOR
```

## Redis Stack Modules

- **RedisJSON**: Native JSON support
- **RediSearch**: Full-text search
- **RedisGraph**: Graph database
- **RedisTimeSeries**: Time-series data
- **RedisBloom**: Probabilistic structures
