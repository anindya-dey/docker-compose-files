# Apache ZooKeeper

ZooKeeper 3.9.4 ensemble with 3 nodes + ZooNavigator UI.

## Quick Start

```bash
make up zookeeper
# or: docker compose up -d
```

## Access

- **Nodes**: `localhost:2181`, `localhost:2182`, `localhost:2183`
- **ZooNavigator UI**: http://localhost:9000

## ZooNavigator

1. Open http://localhost:9000
2. Connection string: `zoo1:2181,zoo2:2181,zoo3:2181`
3. Browse data tree, create nodes, manage ACLs

## Architecture

- **3-Node Ensemble**: Quorum-based consensus
- **Automatic Leader Election**: Self-healing cluster
- **Data Replication**: All nodes sync data
- **Fault Tolerance**: Survives 1 node failure

## Common Commands

```bash
# View logs
make logs zookeeper

# Stop
make down zookeeper

# Remove volumes (deletes data!)
make clean zookeeper

# Check node status
docker exec -it zoo1 zkServer.sh status

# ZooKeeper CLI
docker exec -it zoo1 zkCli.sh

# List nodes
docker exec -it zoo1 zkCli.sh ls /

# Create node
docker exec -it zoo1 zkCli.sh create /mynode "mydata"

# Get node data
docker exec -it zoo1 zkCli.sh get /mynode

# Delete node
docker exec -it zoo1 zkCli.sh delete /mynode
```

## Learning Topics

- **Quorum voting**: How 3 nodes reach consensus
- **Leader election**: Which node becomes leader
- **Data consistency**: How updates propagate
- **Fault tolerance**: Behavior when 1 node fails
