# Neo4j

Graph database with Browser UI.

**Version**: Neo4j 2025.10 Community Edition

## Start

```bash
make up neo4j
```

## Access

- **Browser**: http://localhost:3160
- **Bolt**: bolt://localhost:3161
- **Password**: `password123`

## Query Example

```cypher
CREATE (n:Person {name: 'Alice'})
MATCH (n:Person) RETURN n
```
