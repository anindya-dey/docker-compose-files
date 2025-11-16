# Vault

HashiCorp secrets management (DEV MODE).

**Version**: HashiCorp Vault 1.21

## Start

```bash
make up vault
```

## Access

- **Web UI**: http://localhost:3250
- **Root Token**: `myroot`

⚠️ **DEV MODE** - Not for production. Data stored in memory.

## Commands

```bash
export VAULT_ADDR='http://localhost:3250'
export VAULT_TOKEN='myroot'

# Write secret
vault kv put secret/myapp username=admin password=secret

# Read secret
vault kv get secret/myapp
```
