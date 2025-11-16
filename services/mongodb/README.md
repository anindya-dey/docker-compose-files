# MongoDB

Document database.

**Version**: MongoDB 8.0.17

## Start

```bash
make up mongodb
```

## Access

- **Port**: `localhost:3120`
- **Credentials**: See `.env` file

## Connect

```bash
# CLI
mongosh -u admin -p password

# Connection string
mongodb://admin:password@localhost:3120
```
