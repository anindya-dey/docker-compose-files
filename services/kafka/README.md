# Kafka

Kafka KRaft cluster (3 controllers + 3 brokers) with Kafka UI.

**Version**: Apache Kafka 4.1.1 (KRaft mode) | Kafka UI 0.7.2

## Start

```bash
make up kafka
```

## Access

- **Brokers**: `localhost:3080`, `localhost:3081`, `localhost:3082`
- **Kafka UI**: http://localhost:3083

## Commands

```bash
# Create topic
docker exec kafka-broker-1 kafka-topics.sh --create --topic my-topic \
  --bootstrap-server localhost:9092 --partitions 3 --replication-factor 3

# List topics
docker exec kafka-broker-1 kafka-topics.sh --list --bootstrap-server localhost:9092

# Produce messages
docker exec -it kafka-broker-1 kafka-console-producer.sh \
  --broker-list localhost:9092 --topic my-topic

# Consume messages
docker exec -it kafka-broker-1 kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 --topic my-topic --from-beginning
```
