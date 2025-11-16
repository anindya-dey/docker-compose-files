# 🐳 Docker Compose Files 📁

A collection of production-ready Docker Compose configurations for local development, featuring the latest stable versions, comprehensive health checks, resource management, and security best practices.

## ✨ Recent Improvements (2024-21-09)

🔄 **All services updated to latest stable versions**  
🏥 **Health checks added to all services**  
📊 **Resource limits and reservations configured**  
🔐 **Security improvements with environment files**  
🔁 **Restart policies standardized**  
📁 **Volume management optimized**  

---

## 🚀 Quick Start Guide

### Using Makefile (Recommended)

1. **Clone the repository**:
   ```bash
   git clone <repo-url> && cd docker-compose-files
   ```

2. **View available services**:
   ```bash
   make list
   ```

3. **Start a service**:
   ```bash
   make up SERVICE=postgres
   # or
   make up SERVICE=kafka
   ```

4. **View logs**:
   ```bash
   make logs SERVICE=postgres
   ```

5. **Stop a service**:
   ```bash
   make down SERVICE=postgres
   ```

### Manual Usage

1. **Navigate to service directory**:
   ```bash
   cd services/postgres
   ```

2. **Configure environment** (if needed):
   ```bash
   cp .env.example .env
   nano .env  # Edit with your credentials
   ```

3. **Start the service**:
   ```bash
   docker compose up -d
   ```

4. **Check the service-specific README**:
   ```bash
   cat README.md
   ```

---

## 📂 Project Structure

```
docker-compose-files/
├── Makefile                    # Easy service management
├── README.md                   # This file
├── IMPROVEMENTS.md             # Detailed improvement recommendations
├── SERVICES_TO_ADD.md         # List of services to add
└── services/
    ├── kafka/
    │   ├── compose.yaml
    │   └── README.md
    ├── mongodb/
    │   ├── compose.yaml
    │   ├── .env.example
    │   └── README.md
    ├── ollama/
    │   ├── compose.yaml
    │   └── README.md
    ├── outline/
    │   ├── compose.yaml
    │   ├── .env.example
    │   └── README.md
    ├── postgres/
    │   ├── compose.yaml
    │   ├── .env.example
    │   └── README.md
    ├── redis/
    │   ├── compose.yaml
    │   └── README.md
    ├── stirling-pdf/
    │   ├── compose.yaml
    │   └── README.md
    ├── vaultwarden/
    │   ├── compose.yaml
    │   └── README.md
    └── zookeeper/
        ├── compose.yaml
        └── README.md
```

---

## 🛠️ Makefile Commands

| Command | Description | Example |
|---------|-------------|---------|
| `make help` | Show all available commands | `make help` |
| `make list` | List all available services | `make list` |
| `make up SERVICE=<name>` | Start a service | `make up SERVICE=postgres` |
| `make down SERVICE=<name>` | Stop a service | `make down SERVICE=redis` |
| `make restart SERVICE=<name>` | Restart a service | `make restart SERVICE=kafka` |
| `make logs SERVICE=<name>` | View service logs | `make logs SERVICE=mongodb` |
| `make ps SERVICE=<name>` | Show service status | `make ps SERVICE=ollama` |
| `make clean SERVICE=<name>` | Stop and remove volumes | `make clean SERVICE=postgres` |

---

### Apache Kafka - [services/kafka](services/kafka) 🔄 **Kafka UI Updated to v0.7.2**
- **Full KRaft cluster**: 3 controllers + 3 brokers with **Kafka UI 0.7.2**
- **Brokers**: localhost:29092, 39092, 49092
- **Kafka UI**: http://localhost:9090 (with health checks and resource limits)
- **Architecture**: Apache Kafka 4.1.1 with KRaft mode (no ZooKeeper dependency)
- 📖 [Detailed README](services/kafka/README.md)

<br/>

---

### MongoDB - [services/mongodb](services/mongodb) 🔄 **Updated to v8.0.17**
- **Latest MongoDB 8.0.17** with health checks and proper volume configuration
- **Credentials**: Moved to `.env` file for better security
- **Connection string**: `mongodb://admin:password@localhost:27017` (configurable in .env)
- **Tools**: Install [mongosh](https://www.mongodb.com/try/download/shell) (CLI) or [MongoDB Compass](https://www.mongodb.com/try/download/compass) (GUI)
- 📖 [Detailed README](services/mongodb/README.md)
- **CLI connection**:
  ```sh
  mongosh -u admin -p password
  ```

<br/>

---

### Ollama - [services/ollama](services/ollama) 🔄 **Updated versions**
- **Ollama 0.12.3** + **Open WebUI v0.6.32** with health checks and resource management
- **GPU Support**: NVIDIA GPU acceleration configured
- **Ollama API**: http://localhost:11434
- **Web Interface**: http://localhost:11435
- 📖 [Detailed README](services/ollama/README.md)
- **Setup**:
  1. Wait for containers to become **healthy**
  2. Access web interface → "Get started"
  3. Create admin user (Name, Email, Password)
  4. Admin Panel → Settings → Connections → Add models
  5. Download models and start chatting

<br/>

---

### PostgreSQL - [services/postgres](services/postgres) 🔄 **Updated to v17.6**
- **Latest PostgreSQL 17.6** with **PgAdmin 9.9** and health checks
- **Credentials**: Now in `.env` file for better security
- Open http://localhost:15432 to access **pgAdmin4**
- 📖 [Detailed README](services/postgres/README.md)
- **Default login**: `admin@example.com` / `password` (change in .env)
- **Database connection**:
  - Host: **postgres** (container name)
  - Port: **5432**
  - Username: **postgres** (configurable in .env)
  - Password: **password** (configurable in .env)

<br/>

---

### Redis - [services/redis](services/redis) 🔄 **Updated to v7.4.0-v8**
- **Latest Redis Stack 7.4.0-v8** with health checks and resource management
- **Redis server**: localhost:6379
- **RedisInsight UI**: http://localhost:6378
- 📖 [Detailed README](services/redis/README.md)
- More info: [Redis Stack Docker](https://redis.io/docs/latest/operate/oss_and_stack/install/install-stack/docker/)

<br/>

---

### VaultWarden - [services/vaultwarden](services/vaultwarden) 🔄 **Updated to v1.32.5**
- **Pinned version 1.32.5** for stability with health checks
- **Port**: 8081 (HTTP)
- **Security**: Signups disabled by default, admin token required
- 📖 [Detailed README](services/vaultwarden/README.md)
- Open http://localhost:8081 to access VaultWarden

<br/>

---

### ZooKeeper - [services/zookeeper](services/zookeeper) 🔄 **Updated to v3.9.4**
- **Latest ZooKeeper 3.9.4** with **ZooNavigator 1.1.4** and health checks
- **Three-node cluster** with persistent volumes and resource limits
- 📖 [Detailed README](services/zookeeper/README.md)
- Open http://localhost:9000 to access **ZooNavigator UI**
- **Connection**: 
  - String: **zoo1:2181,zoo2:2181,zoo3:2181**
  - Auth: Leave blank for local development

<br/>

---

### Outline Wiki - [services/outline](services/outline) 🔄 **Updated to v1.0.1**
- **Outline 1.0.1** - Modern team knowledge base and wiki
- **Stack**: Outline + PostgreSQL 17 + Redis 7
- **Port**: 3100 (web interface)
- 📖 [Detailed README](services/outline/README.md)
- **Requires**: OAuth configuration for authentication
- Access: http://localhost:3100

<br/>

---

### Stirling PDF - [services/stirling-pdf](services/stirling-pdf)
- **Latest Stirling PDF** - Powerful locally hosted PDF manipulation
- **Features**: Convert, merge, split, OCR, compress, sign PDFs
- **Port**: 4000
- 📖 [Detailed README](services/stirling-pdf/README.md)
- **Privacy**: All processing done locally
- Access: http://localhost:4000

<br/>

---
