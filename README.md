# 🐳 Docker Compose Files 📁
Some handy docker compose files for local development

---

### CloudBeaver - [docker-compose.cloudbeaver.yaml](docker-compose.cloudbeaver.yaml)
- Spins up a local web-based DBeaver called [CloudBeaver](https://github.com/dbeaver/cloudbeaver)
- Use it to connect to sny supported DBs like MS SQL, PostgreSQL, etc.
- Open http://localhost:8978 to access it.
- Use the following credentials to set it up for the first time:
  - Username: **cbadmin** (_default, change it if you want_)
  - Password: **Password@123**
- MS SQL server can be connected using the following:
  - Host:
  - Port:
  - Username:
  - Password:

<br/>

---

### Apache Kafka - [docker-compose.kafka.yaml](docker-compose.kafka.yaml)
- Spins up a local kafka cluster (3 controllers and 3 brokers) and a UI to access the cluster
- Open http://localhost:9090 to access the UI

<br/>

---

###  Firefly - [docker-compose.firefly.yaml](firefly/docker-compose.firefly.yaml)
- Spins up Firefly along with Postgres DB
- Firefly is a personal finance trackin system
- Open http://localhost to access the UI

<br/>

---

### MongoDB - [docker-compose.mongodb.yaml](docker-compose.mongodb.yaml)
- Spins up a local MongoDB database
- Install [mongosh](https://www.mongodb.com/try/download/shell) (CLI) or [MongoDB Compass](https://www.mongodb.com/try/download/compass) (GUI) to access it
- Connection string: `mongodb://root:example@localhost:27017`
- If `mongosh` is installed, then following is the way to connect to the database via CLI:

  ```sh
  mongosh -u root -p example
  ```

<br/>

---

### MS SQL - [docker-compose.mssql.yaml](docker-compose.mssql.yaml)
- Spins up a local MS SQL server
- It will only work on **amd64** architecture (_NOT on MacBook M1, or any **arm**-based arch_)
- Use the following to connect to it:
  - Host: **mssql** (_name of the mssql docker container_)
  - Port: **1433** (_default port of MS SQL server_)
  - Username: **sa**
  - Password: **Password@1**

<br/>

---

### PostgreSQL - [docker-compose.postgres.yaml](docker-compose.postgres.yaml)
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

### Redis - [docker-compose.redis.yaml](docker-compose.redis.yaml)
- Spins up a local Redis server and an interactive UI (from redis-stack). More info [here](https://redis.io/docs/latest/operate/oss_and_stack/install/install-stack/docker/)
- Open http://localhost:6378 to access the UI

<br/>

---

### SQLPad - [docker-compose.sqlpad.yaml](docker-compose.sqlpad.yaml)
- Spins up [SQLPad](https://getsqlpad.com/en/introduction/) - a web app for writing and running SQL queries and visualizing the results
- Open http://localhost:4000 to access it
- Use the following to login:
  - Email: **admin@sqlpad.com**
  - Password: **admin**

<br/>

---

### ZooKeeper - [docker-compose.zookeeper.yaml](docker-compose.zookeeper.yaml)
- Spins up three ZooKeeper nodes and a UI - ZooNavigator - to access those
- Open http://localhost:9000 to access the UI
- Use the following to connect:
  - Connection String: **zoo1:2181,zoo2:2182,zoo3:2183** (_names of zookeeper nodes followed by their respective ports_)
  - Leave the _Auth username_ and _Auth password_ blank

<br/>

---
