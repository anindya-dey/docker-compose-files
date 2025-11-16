# Kong

API Gateway with PostgreSQL backend.

**Version**: Kong 3.9.1 | PostgreSQL 18.1

## Start

```bash
make up kong
```

## Access

- **Proxy**: http://localhost:3100
- **Admin API**: http://localhost:3101

## Add Service

```bash
# Create service
curl -i -X POST http://localhost:8001/services \
  --data name=my-service \
  --data url='http://httpbin.org'

# Add route
curl -i -X POST http://localhost:8001/services/my-service/routes \
  --data 'paths[]=/mock'

# Test
curl http://localhost:8000/mock/get
```
