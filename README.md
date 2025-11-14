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

1. **Clone and navigate**:
   ```bash
   git clone <repo-url> && cd docker-compose-files
   ```

2. **Choose a service**:
   ```bash
   cd services/
   ```

3. **Configure environment** (if needed):
   ```bash
   # Edit credentials for services that require them
   nano postgres.env  # for PostgreSQL
   nano .env          # for MongoDB
   ```

4. **Start service**:
   ```bash
   docker-compose -f <service>.docker-compose.yaml up -d
   ```

---

### Apache Kafka - [kafka.docker-compose.yaml](services/kafka.docker-compose.yaml) 🔄 **Kafka UI Updated to v0.7.6**
- **Full KRaft cluster**: 3 controllers + 3 brokers with **Kafka UI 0.7.6**
- **Brokers**: localhost:29092, 39092, 49092
- **Kafka UI**: http://localhost:9090 (with health checks and resource limits)
- **Architecture**: Apache Kafka 4.0.0 with KRaft mode (no ZooKeeper dependency)

<br/>

---

### MongoDB - [mongodb.docker-compose.yaml](services/mongodb.docker-compose.yaml) 🔄 **Updated to v8.0.17**
- **Latest MongoDB 8.0.17** with health checks and proper volume configuration
- **Credentials**: Moved to `.env` file for better security
- **Connection string**: `mongodb://root:example@localhost:27017` (configurable in .env)
- **Tools**: Install [mongosh](https://www.mongodb.com/try/download/shell) (CLI) or [MongoDB Compass](https://www.mongodb.com/try/download/compass) (GUI)
- **CLI connection**:
  ```sh
  mongosh -u root -p example
  ```

<br/>

---

### Ollama - [ollama.docker-compose.yaml](services/ollama.docker-compose.yaml) 🔄 **Updated versions**
- **Ollama 0.5.5** + **Open WebUI 0.5.8** with health checks and resource management
- **GPU Support**: NVIDIA GPU acceleration configured
- **Ollama API**: http://localhost:11434
- **Web Interface**: http://localhost:11435
- **Setup**:
  1. Wait for containers to become **healthy**
  2. Access web interface → "Get started"
  3. Create admin user (Name, Email, Password)
  4. Admin Panel → Settings → Connections → Add models
  5. Download models and start chatting

<br/>

---

### PostgreSQL - [postgres.docker-compose.yaml](services/postgres.docker-compose.yaml) 🔄 **Updated to v17.6**
- **Latest PostgreSQL 17.6** with **PgAdmin 9.9** and health checks
- **Credentials**: Now in `postgres.env` file for better security
- Open http://localhost:15432 to access **pgAdmin4**
- **Default login**: `admin@pgadmin.com` / `password` (change in postgres.env)
- **Database connection**:
  - Host: **postgres** (container name)
  - Port: **5432**
  - Username: **postgres** (configurable in postgres.env)
  - Password: **postgres** (configurable in postgres.env)

<br/>

---

### Redis - [redis.docker-compose.yaml](services/redis.docker-compose.yaml) 🔄 **Updated to v7.4.0-v6**
- **Latest Redis Stack 7.4.0-v6** with health checks and resource management
- **Redis server**: localhost:6379
- **RedisInsight UI**: http://localhost:6378
- More info: [Redis Stack Docker](https://redis.io/docs/latest/operate/oss_and_stack/install/install-stack/docker/)

<br/>

---

### VaultWarden - [vaultwarden.docker-compose.yaml](services/vaultwarden.docker-compose.yaml) 🔄 **Updated to v1.32.5**
- **Pinned version 1.32.5** for stability with health checks
- **Ports changed**: Now on **8080** (HTTP) and **8443** (HTTPS) to avoid conflicts
- **Security**: Signups disabled by default, admin token required
- Open http://localhost:8080 to access VaultWarden

<br/>

---

### ZooKeeper - [zookeeper.docker-compose.yaml](services/zookeeper.docker-compose.yaml) 🔄 **Updated to v3.9.4**
- **Latest ZooKeeper 3.9.4** with **ZooNavigator 1.1.4** and health checks
- **Three-node cluster** with persistent volumes and resource limits
- Open http://localhost:9000 to access **ZooNavigator UI**
- **Connection**: 
  - String: **zoo1:2181,zoo2:2181,zoo3:2181**
  - Auth: Leave blank for local development

<br/>
