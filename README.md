# 🐳 Docker Compose Files 📁
Some handy docker compose files for local development

---

### Apache Kafka - [kafka.docker-compose.yaml](resources/kafka.docker-compose.yaml)
- Spins up a local kafka cluster (3 controllers and 3 brokers) and a UI to access the cluster
- Open http://localhost:9090 to access the UI

<br/>

---

### MongoDB - [mongodb.docker-compose.yaml](resources/mongodb.docker-compose.yaml)
- Spins up a local MongoDB database
- Install [mongosh](https://www.mongodb.com/try/download/shell) (CLI) or [MongoDB Compass](https://www.mongodb.com/try/download/compass) (GUI) to access it
- Connection string: `mongodb://root:example@localhost:27017`
- If `mongosh` is installed, then following is the way to connect to the database via CLI:

  ```sh
  mongosh -u root -p example
  ```

<br/>

---

### PostgreSQL - [postgres.docker-compose.yaml](resources/postgres.docker-compose.yaml)
- Spins up a local Postgres database and **pgAdmin4** (_UI to access the database_)
- Open http://localhost:15432 to access **pgAdmin4**
- Login using `admin@pgadmin.com` as username and `password` as password
- In order to register the local Postgres database, use the following:
  - Name: Postgres Local (_any name would do_)
  - Host: **postgresql** (_name of the postgresql docker container_)
  - Port: **5432** (_default port of PostgreSQL server_)
  - Username: **admin**
  - Password: **postgres** (_do not forget to **toggle ON** "Save Password?"_)

<br/>

---

### Redis - [redis.docker-compose.yaml](resources/redis.docker-compose.yaml)
- Spins up a local Redis server and an interactive UI (from redis-stack). More info [here](https://redis.io/docs/latest/operate/oss_and_stack/install/install-stack/docker/)
- Open http://localhost:6378 to access the UI

<br/>

---

### ZooKeeper - [zookeeper.docker-compose.yaml](resources/zookeeper.docker-compose.yaml)
- Spins up three ZooKeeper nodes and a UI - ZooNavigator - to access those
- Open http://localhost:9000 to access the UI
- Use the following to connect:
  - Connection String: **zoo1:2181,zoo2:2182,zoo3:2183** (_names of zookeeper nodes followed by their respective ports_)
  - Leave the _Auth username_ and _Auth password_ blank

<br/>

