# RabbitMQ

Message broker with management UI.

**Version**: RabbitMQ 4.2.0 Management

## Start

```bash
make up rabbitmq
```

## Access

- **Management**: http://localhost:3211 (admin/admin)
- **AMQP**: `localhost:3210`

## Commands

```bash
# List queues
docker exec rabbitmq rabbitmqctl list_queues

# List exchanges
docker exec rabbitmq rabbitmqctl list_exchanges
```
