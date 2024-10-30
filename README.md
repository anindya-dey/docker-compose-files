# 🐳 Docker Compose Files 📁
Some handy docker compose files for local development

### Apache Kafka - `docker-compose.kafka.yaml`
- Spins up a local kafka cluster and a UI to access the cluser
- Open http://localhost:9090 to access the UI

### MongoDB - `docker-compose.mongodb.yaml`
- Spins up a local MongoDB database
- Install [mongosh](https://www.mongodb.com/try/download/shell) (CLI) or [MongoDB Compass](https://www.mongodb.com/try/download/compass) (GUI) to access it
- Connection string: `mongodb://root:example@localhost:27017`

### Postgres - `docker-compose.postgres.yaml`
- Spins up a local Postgres database and **pgAdmin** (UI to access the database)
- Open http://localhost:15432 to access **pgAdmin**

### Redis - `docker-compose.redis.yaml`
- Spins up a local Redis server and an interactive UI (from redis-stack). More info [here](https://redis.io/docs/latest/operate/oss_and_stack/install/install-stack/docker/)
- Open http://localhost:6378 to access the UI
