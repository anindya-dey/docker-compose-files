# Docker Compose Services

Self-hosted services for local development and learning. All services include health checks, resource limits, and follow best practices.

## Port Allocation

All services use standardized ports in the 3000-3289 range to avoid conflicts:

| Service | Ports | Access |
|---------|-------|--------|
| **Airflow** | 3010-3011 | Web: 3010, Flower: 3011 |
| **Authentik** | 3020-3021 | HTTP: 3020, HTTPS: 3021 |
| **ELK Stack** | 3030-3036 | Kibana: 3030, ES: 3031-3032, Logstash: 3033-3036 |
| **Gitea** | 3050-3051 | Web: 3050, SSH: 3051 |
| **InfluxDB** | 3060-3061 | InfluxDB: 3060, Grafana: 3061 |
| **Jenkins** | 3070-3071 | Web: 3070, Agent: 3071 |
| **Kafka** | 3080-3083 | Brokers: 3080-3082, UI: 3083 |
| **Kong** | 3100-3104 | Proxy: 3100, Admin: 3101-3102, HTTPS: 3103-3104 |
| **MinIO** | 3110-3111 | API: 3110, Console: 3111 |
| **MongoDB** | 3120 | Database: 3120 |
| **Monitoring** | 3130-3133 | Grafana: 3130, Prometheus: 3131, AlertManager: 3132, Node Exporter: 3133 |
| **n8n** | 3150 | Web: 3150 |
| **Neo4j** | 3160-3161 | Browser: 3160, Bolt: 3161 |
| **Ollama** | 3170-3171 | API: 3170, WebUI: 3171 |
| **Outline** | 3180-3182 | Web: 3180, Redis: 3181, PostgreSQL: 3182 |
| **PostgreSQL** | 3190-3191 | Database: 3190, pgAdmin: 3191 |
| **Pulsar** | 3200-3203 | Broker: 3200, Admin: 3201, Manager: 3202-3203 |
| **RabbitMQ** | 3210-3211 | AMQP: 3210, Management: 3211 |
| **Redis** | 3220-3221 | Database: 3220, Insight: 3221 |
| **SonarQube** | 3230 | Web: 3230 |
| **Stirling PDF** | 3240 | Web: 3240 |
| **Vault** | 3250 | Web: 3250 |
| **VaultWarden** | 3260 | Web: 3260 |
| **ZooKeeper** | 3270-3273 | Nodes: 3270-3272, Navigator: 3273 |

## Quick Start

```bash
# List all services
make list

# Start a service
make up SERVICE=postgres

# View logs
make logs SERVICE=postgres

# Stop a service
make down SERVICE=postgres
```

## Available Services

### Databases
- **[PostgreSQL](services/postgres)** - Relational database with pgAdmin (3190-3191)
- **[MongoDB](services/mongodb)** - Document database (3120)
- **[Redis](services/redis)** - In-memory cache with RedisInsight (3220-3221)
- **[InfluxDB](services/influxdb)** - Time-series database with Grafana (3060-3061)
- **[Neo4j](services/neo4j)** - Graph database (3160-3161)

### Messaging & Streaming
- **[Kafka](services/kafka)** - Event streaming with Kafka UI (3080-3083)
- **[RabbitMQ](services/rabbitmq)** - Message broker (3210-3211)
- **[Apache Pulsar](services/pulsar)** - Modern messaging platform (3200-3203)
- **[ZooKeeper](services/zookeeper)** - Coordination service with ZooNavigator (3270-3273)

### Monitoring & Logging
- **[Prometheus + Grafana](services/monitoring)** - Metrics and dashboards (3130-3133)
- **[ELK Stack](services/elk)** - Elasticsearch, Logstash, Kibana (3030-3036)

### Security & Identity
- **[Authentik](services/authentik)** - Identity provider (3020-3021)
- **[HashiCorp Vault](services/vault)** - Secrets management (3250)
- **[VaultWarden](services/vaultwarden)** - Password manager (3260)

### DevOps & CI/CD
- **[Jenkins](services/jenkins)** - Automation server (3070-3071)
- **[Airflow](services/airflow)** - Workflow orchestration (3010-3011)
- **[Gitea](services/gitea)** - Git service (3050-3051)
- **[SonarQube](services/sonarqube)** - Code quality (3230)

### API & Gateway
- **[Kong](services/kong)** - API Gateway (3100-3104)
- **[MinIO](services/minio)** - S3-compatible storage (3110-3111)

### Applications
- **[n8n](services/n8n)** - Workflow automation (3150)
- **[Outline](services/outline)** - Team wiki (3180-3182)
- **[Stirling PDF](services/stirling-pdf)** - PDF tools (3240)
- **[Ollama](services/ollama)** - Local AI with Open WebUI (3170-3171)

## Commands

| Command | Description |
|---------|-------------|
| `make list` | List all services |
| `make up SERVICE=name` | Start service |
| `make down SERVICE=name` | Stop service |
| `make restart SERVICE=name` | Restart service |
| `make logs SERVICE=name` | View logs |
| `make ps SERVICE=name` | Show status |
| `make clean SERVICE=name` | Remove volumes |
