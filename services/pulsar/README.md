# Pulsar

Modern messaging and streaming platform (Kafka alternative).

**Version**: Apache Pulsar 4.1.1 | Pulsar Manager 0.4.0

## Start

```bash
make up pulsar
```

## Access

- **Admin**: http://localhost:3201
- **Broker**: `pulsar://localhost:6650`
- **Pulsar Manager**: http://localhost:9527 (port 7750 backend)

## Commands

```bash
# Create topic
docker exec pulsar bin/pulsar-admin topics create persistent://public/default/my-topic

# Produce message
docker exec pulsar bin/pulsar-client produce persistent://public/default/my-topic --messages "Hello"

# Consume messages
docker exec pulsar bin/pulsar-client consume persistent://public/default/my-topic -s "my-sub" -n 0
```
