# Apache Kafka (KRaft Mode)

Kafka 4.1.1 with 3 controllers + 3 brokers + Kafka UI. No ZooKeeper required.

## Quick Start

```bash
make up kafka
# or: docker compose up -d
```

## Access

- **Brokers**: `localhost:29092`, `localhost:39092`, `localhost:49092`
- **Kafka UI**: http://localhost:9090

## Architecture

- **3 Controllers**: Cluster metadata and leader election (KRaft mode)
- **3 Brokers**: Data storage and client connections
- **Kafka UI**: Web-based cluster management

## Kafka UI

Open http://localhost:9090 to:
- View topics, brokers, consumers
- Create and manage topics
- Produce/consume messages
- Monitor cluster health

## Common Commands

```bash
# View logs
make logs kafka

# Stop
make down kafka

# Create topic
docker exec -it kafka-broker-1 kafka-topics.sh \\\n  --create --topic my-topic \\\n  --bootstrap-server localhost:9092 \\\n  --partitions 3 --replication-factor 3

# List topics
docker exec -it kafka-broker-1 kafka-topics.sh \\\n  --list --bootstrap-server localhost:9092

# Describe topic
docker exec -it kafka-broker-1 kafka-topics.sh \\\n  --describe --topic my-topic \\\n  --bootstrap-server localhost:9092

# Produce messages
docker exec -it kafka-broker-1 kafka-console-producer.sh \\\n  --broker-list localhost:9092 --topic my-topic

# Consume messages
docker exec -it kafka-broker-1 kafka-console-consumer.sh \\\n  --bootstrap-server localhost:9092 \\\n  --topic my-topic --from-beginning

# Delete topic
docker exec -it kafka-broker-1 kafka-topics.sh \\\n  --delete --topic my-topic \\\n  --bootstrap-server localhost:9092\n```

## Learning Topics

- **Distributed consensus**: How controllers elect leaders
- **Partition replication**: Data redundancy across brokers
- **Fault tolerance**: What happens when a broker fails
- **Load balancing**: How messages distribute across partitions
