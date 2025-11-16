# Vaultwarden

Vaultwarden 1.32.5 - Self-hosted Bitwarden-compatible password manager.

## Quick Start

```bash
make up vaultwarden
# or: docker compose up -d
```

## Access

- **Vaultwarden**: http://localhost:8081

## Setup

1. Open http://localhost:8081
2. Create your account
3. Download Bitwarden clients:
   - Browser extensions (Chrome, Firefox, Edge, etc.)
   - Mobile apps (iOS/Android)
   - Desktop apps (Windows, Mac, Linux)

## Client Configuration

Before logging in to Bitwarden clients:
1. Click Settings (gear icon)
2. Enter server URL: `http://localhost:8081`
3. Save and login

## Common Commands

```bash
# View logs
make logs vaultwarden

# Stop
make down vaultwarden

# Remove volumes (deletes all passwords!)
make clean vaultwarden

# Backup
docker cp vaultwarden-server:/data ./vaultwarden-backup

# Restore
docker cp ./vaultwarden-backup vaultwarden-server:/data
```

## Enable Signups

Update `compose.yaml`:
```yaml
environment:
  - SIGNUPS_ALLOWED=true
```

## Admin Panel

Generate token:
```bash
openssl rand -base64 48
```

Add to `compose.yaml`:
```yaml
environment:
  - ADMIN_TOKEN=your_generated_token
```

Access: http://localhost:8081/admin

## Security Tips

- Disable signups after creating accounts
- Use strong master passwords
- Enable 2FA for all accounts
- Regular backups of data volume
- Use HTTPS in production (reverse proxy)
