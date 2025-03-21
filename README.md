# 🐳 Docker Compose Files 📁
Some handy docker compose files for local development

---

### CloudBeaver - [docker-compose.cloudbeaver.yaml](docker-compose.cloudbeaver.yaml)

---

### Apache Kafka - [docker-compose.kafka.yaml](docker-compose.kafka.yaml)
- Spins up a local kafka cluster and a UI to access the cluser
- Open http://localhost:9090 to access the UI

---

### MongoDB - [docker-compose.mongodb.yaml](docker-compose.mongodb.yaml)
- Spins up a local MongoDB database
- Install [mongosh](https://www.mongodb.com/try/download/shell) (CLI) or [MongoDB Compass](https://www.mongodb.com/try/download/compass) (GUI) to access it
- Connection string: `mongodb://root:example@localhost:27017`
- If `mongosh` is installed, then following is the way to connect to the database via CLI:
  ```sh
  mongosh -u root -p example
  ```
---

### MS SQL - [docker-compose.mssql.yaml](docker-compose.mssql.yaml)

---

### PostgreSQL - [docker-compose.postgres.yaml](docker-compose.postgres.yaml)
- Spins up a local Postgres database and **pgAdmin4** (UI to access the database)
- Open http://localhost:15432 to access **pgAdmin4**
- Login using `adminadmin@pgadmin.com` as username and `password` as password
- In order to access the local Postgres database, use the following:
  - Hostname:
  - Port:
  - Username:
  - Password:

---

### Redis - [docker-compose.redis.yaml](docker-compose.redis.yaml)
- Spins up a local Redis server and an interactive UI (from redis-stack). More info [here](https://redis.io/docs/latest/operate/oss_and_stack/install/install-stack/docker/)
- Open http://localhost:6378 to access the UI

---

### SQLPad - [docker-compose.sqlpad.yaml](docker-compose.sqlpad.yaml)

---

### ZooKeeper - [docker-compose.zookeeper.yaml](docker-compose.zookeeper.yaml)

---
